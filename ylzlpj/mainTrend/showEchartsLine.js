//全省注册登记例数趋势图
function showEchartsline(id, title, legendData, xAxisdata, seriesname1, seriesname2, seriesdata1, seriesdata2) {
    var myChart = echarts.init(document.getElementById(id));
    //myChart.showLoading({//数据加载之前的效果
    //    color: '#00a0e9',
    //    text: '数据读取中...',
    //    textStyle: {
    //        fontSize: 26,
    //        color: '#303131'
    //    }
    //});
    var option = {
        color: ['#ff0000', 'blue'],
        textStyle: {
            fontSize: 14,
        },
        title: {
            text: title,
            x: '100px',
            textStyle: {
                color: '#303131',
                fontSize: 20,
                fontWeight: 'normal'
            }
        },
        tooltip: {
            trigger: 'axis',
            formatter: '{a}:{c}%<br>{a1}:{c1}%'
        },
        legend: {
            bottom: '0',
            textStyle: {
                fontSize: 14,
            },
            data: legendData
        },
        grid: {
            left: '0',
            bottom: '20px',
            top: '48px',
            containLabel: true
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            splitLine: { //网格线
                show: true,
                lineStyle: {
                    color: ['#b1b1b1'],
                    //type: 'dashed'
                },
            },
            axisLabel: {
                textStyle: {
                    color: '#303131',
                    fontSize: 14,
                    align: 'center',
                    baseline: 'bottom',
                },
                interval: 0,
                rotate: 0,
                margin: 25

            },
            data: xAxisdata
        },
        yAxis: {
            boundaryGap: false,
            type: 'value',
            axisLabel: {
                formatter: '{value}%',
                textStyle: {
                    color: '#303131',
                    fontSize: 14,
                },
                margin: 12
            },
            min: 0,
            max: 100,
        },
        series: [{
            name: seriesname1,
            type: 'line',
            data: seriesdata1,
            symbol: 'rect',
            symbolSize: 10,

            label: {
                normal: {
                    show: true,
                    textStyle: {
                        fontSize: 14,
                    },
                    position: 'top' //值显示
                }
            }
        },
        {
            name: seriesname2,
            type: 'line',
            data: seriesdata2,
            symbol: 'triangle',
            symbolSize: 10,

            label: {
                normal: {
                    show: true,
                    textStyle: {
                        fontSize: 14,
                    },
                    position: 'top'
                }
            }
        }
        ]
    }

    myChart.setOption(option);
}