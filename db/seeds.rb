#encoding: utf-8

servises = Service.create([{ name: 'УЗИ' },
                           { name: 'ЭКГ' },
                           { name: 'Анализы' },
                           { name: 'Процедуры' }])
ServicePrice.create([{ name: 'УЗИ органов брюшной полости', service_id: servises[0].id },
                     { name: 'УЗИ почек', service_id: servises[0].id },
                     { name: 'УЗИ органов малого таза', service_id: servises[0].id },
                     { name: 'УЗИ органов мошонки', service_id: servises[0].id },
                     { name: 'УЗИ щитовидной железы', service_id: servises[0].id }])
ServicePrice.create([{ name: 'Клинический анализ крови', service_id: servises[2].id },
                     { name: 'Биохимический анализ крови', service_id: servises[2].id },
                     { name: 'Общий анализ мочи', service_id: servises[2].id },
                     { name: 'Обследование на скрытые инфекции', service_id: servises[2].id },
                     { name: 'Анализ спермограммы', service_id: servises[2].id },
                     { name: 'Анализ простатического сока', service_id: servises[2].id }])
ServicePrice.create([{ name: 'Мезотерапия', service_id: servises[3].id },
                     { name: 'Контурная пластика лица', service_id: servises[3].id },
                     { name: 'Инъекции ботокса', service_id: servises[3].id },
                     { name: 'Инстилляции в мочевой пузырь', service_id: servises[3].id }])

specialties = Specialty.create([{ name: 'Аллерголог' },
                                { name: 'Гинеколог' },
                                { name: 'Дерматолог' },
                                { name: 'Кардиолог' },
                                { name: 'Косметолог' },
                                { name: 'Невролог' },
                                { name: 'Окулист' },
                                { name: 'Отоларинголог' },
                                { name: 'Педиатр' },
                                { name: 'Ревматолог' },
                                { name: 'Стоматолог' },
                                { name: 'Терапевт' },
                                { name: 'Уролог' },
                                { name: 'Хирург' },
                                { name: 'Эндокринолог' }])




