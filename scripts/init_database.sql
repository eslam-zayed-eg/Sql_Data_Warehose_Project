
exec bronze.load_bronze
create or alter procedure bronze.load_bronze as
begin
      print'==============================';
      print 'Loading bronze layer';
      print'==============================';


	  print'------------------------------';
	  print 'Loading CRM Tabels';
	  print'------------------------------';
	  		PRINT '>> Truncating Table: bronze.crm_cust_info';

	truncate table bronze.crm_cust_info
	bulk insert  bronze.crm_cust_info
	from 'C:\Users\win\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_crm\cust_info.csv'
	with (
	firstrow =2,
	fieldterminator=',' ,

	tablock

	)		PRINT '>> Truncating Table: bronze.crm_prd_info';


	truncate table bronze.crm_prd_info
	bulk insert  bronze.crm_prd_info
	from 'C:\Users\win\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_crm\prd_info.csv'
	with (
	firstrow =2,
	fieldterminator=',' ,

	tablock

	)
			PRINT '>> Truncating Table: bronze.crm_sales_details';

	truncate table bronze.crm_sales_details
	bulk insert  bronze.crm_sales_details
	from 'C:\Users\win\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_crm\sales_details.csv'
	with (
	firstrow =2,
	fieldterminator=',' ,

	tablock

	)
		  print'------------------------------';
	  print 'Loading ERP Tabels';
	  print'------------------------------';
	  		PRINT '>> Truncating Table: bronze.erp_loc_a101';


	truncate table bronze.erp_loc_a101
	bulk insert  bronze.erp_loc_a101
	from 'C:\Users\win\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_erp\loc_a101.csv'
	with (
	firstrow =2,
	fieldterminator=',' ,

	tablock

	)	
	PRINT '>> Truncating Table: bronze.erp_cust_az12';

	truncate table bronze.erp_cust_az12
	bulk insert  bronze.erp_cust_az12
	from 'C:\Users\win\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_erp\cust_az12.csv'
	with (
	firstrow =2,
	fieldterminator=',' ,

	tablock

	)

			PRINT '>> Truncating Table: bronze.erp_px_cat_g1v2';


	truncate table bronze.erp_px_cat_g1v2
	bulk insert  bronze.erp_px_cat_g1v2
	from 'C:\Users\win\Downloads\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_erp\px_cat_g1v2.csv'
	with (
	firstrow =2,
	fieldterminator=',' ,

	tablock

	)


end









