.class public Lcom/android/internal/policy/impl/sec/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field static chineseDateFormat:Ljava/text/SimpleDateFormat;

.field static final chineseNumber:[Ljava/lang/String;

.field static final lunarInfo:[J


# instance fields
.field private day:I

.field private leap:Z

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/sec/Lunar;->chineseNumber:[Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    .line 17
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/sec/Lunar;->lunarInfo:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xd8t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 15
    .parameter "cal"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v7, 0x0

    .line 97
    .local v7, leapMonth:I
    const/4 v0, 0x0

    .line 99
    .local v0, baseDate:Ljava/util/Date;
    :try_start_0
    sget-object v11, Lcom/android/internal/policy/impl/sec/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v12, "1900\u5e741\u670831\u65e5"

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x5265c00

    div-long/2addr v11, v13

    long-to-int v9, v11

    .line 106
    .local v9, offset:I
    add-int/lit8 v1, v9, 0x28

    .line 107
    .local v1, dayCyl:I
    const/16 v8, 0xe

    .line 113
    .local v8, monCyl:I
    const/4 v3, 0x0

    .line 114
    .local v3, daysOfYear:I
    const/16 v6, 0x76c

    .local v6, iYear:I
    :goto_1
    const/16 v11, 0x802

    if-ge v6, v11, :cond_0

    if-lez v9, :cond_0

    .line 115
    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/Lunar;->yearDays(I)I

    move-result v3

    .line 116
    sub-int/2addr v9, v3

    .line 117
    add-int/lit8 v8, v8, 0xc

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 100
    .end local v1           #dayCyl:I
    .end local v3           #daysOfYear:I
    .end local v6           #iYear:I
    .end local v8           #monCyl:I
    .end local v9           #offset:I
    :catch_0
    move-exception v4

    .line 101
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v4           #e:Ljava/text/ParseException;
    .restart local v1       #dayCyl:I
    .restart local v3       #daysOfYear:I
    .restart local v6       #iYear:I
    .restart local v8       #monCyl:I
    .restart local v9       #offset:I
    :cond_0
    if-gez v9, :cond_1

    .line 120
    add-int/2addr v9, v3

    .line 121
    add-int/lit8 v6, v6, -0x1

    .line 122
    add-int/lit8 v8, v8, -0xc

    .line 125
    :cond_1
    iput v6, p0, Lcom/android/internal/policy/impl/sec/Lunar;->year:I

    .line 127
    add-int/lit16 v10, v6, -0x748

    .line 128
    .local v10, yearCyl:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/Lunar;->leapMonth(I)I

    move-result v7

    .line 129
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, daysOfMonth:I
    const/4 v5, 0x1

    .local v5, iMonth:I
    :goto_2
    const/16 v11, 0xd

    if-ge v5, v11, :cond_5

    if-lez v9, :cond_5

    .line 135
    if-lez v7, :cond_4

    add-int/lit8 v11, v7, 0x1

    if-ne v5, v11, :cond_4

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    if-nez v11, :cond_4

    .line 136
    add-int/lit8 v5, v5, -0x1

    .line 137
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    .line 138
    iget v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->year:I

    invoke-static {v11}, Lcom/android/internal/policy/impl/sec/Lunar;->leapDays(I)I

    move-result v2

    .line 142
    :goto_3
    sub-int/2addr v9, v2

    .line 144
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    if-eqz v11, :cond_2

    add-int/lit8 v11, v7, 0x1

    if-ne v5, v11, :cond_2

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    .line 145
    :cond_2
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    if-nez v11, :cond_3

    add-int/lit8 v8, v8, 0x1

    .line 133
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 140
    :cond_4
    iget v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->year:I

    invoke-static {v11, v5}, Lcom/android/internal/policy/impl/sec/Lunar;->monthDays(II)I

    move-result v2

    goto :goto_3

    .line 148
    :cond_5
    if-nez v9, :cond_6

    if-lez v7, :cond_6

    add-int/lit8 v11, v7, 0x1

    if-ne v5, v11, :cond_6

    .line 149
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    if-eqz v11, :cond_8

    .line 150
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    .line 158
    :cond_6
    :goto_4
    if-gez v9, :cond_7

    .line 159
    add-int/2addr v9, v2

    .line 160
    add-int/lit8 v5, v5, -0x1

    .line 161
    add-int/lit8 v8, v8, -0x1

    .line 163
    :cond_7
    iput v5, p0, Lcom/android/internal/policy/impl/sec/Lunar;->month:I

    .line 164
    add-int/lit8 v11, v9, 0x1

    iput v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->day:I

    .line 165
    return-void

    .line 152
    :cond_8
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    .line 153
    add-int/lit8 v5, v5, -0x1

    .line 154
    add-int/lit8 v8, v8, -0x1

    goto :goto_4
.end method

.method private static final cyclicalm(I)Ljava/lang/String;
    .locals 9
    .parameter "num"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "\u7532"

    aput-object v2, v0, v4

    const-string v2, "\u4e59"

    aput-object v2, v0, v5

    const-string v2, "\u4e19"

    aput-object v2, v0, v6

    const-string v2, "\u4e01"

    aput-object v2, v0, v7

    const-string v2, "\u620a"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "\u5df1"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u5e9a"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u8f9b"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u58ec"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u7678"

    aput-object v3, v0, v2

    .line 76
    .local v0, Gan:[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u5b50"

    aput-object v2, v1, v4

    const-string v2, "\u4e11"

    aput-object v2, v1, v5

    const-string v2, "\u5bc5"

    aput-object v2, v1, v6

    const-string v2, "\u536f"

    aput-object v2, v1, v7

    const-string v2, "\u8fb0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5df3"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u5348"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u672a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u7533"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u9149"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u620c"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u4ea5"

    aput-object v3, v1, v2

    .line 77
    .local v1, Zhi:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p0, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getChinaDayString(I)Ljava/lang/String;
    .locals 4
    .parameter "day"

    .prologue
    .line 168
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u521d"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u5eff"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u5345"

    aput-object v3, v0, v2

    .line 169
    .local v0, chineseTen:[Ljava/lang/String;
    rem-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 170
    .local v1, n:I
    :goto_0
    const/16 v2, 0x1e

    if-le p0, v2, :cond_1

    .line 171
    const-string v2, ""

    .line 175
    :goto_1
    return-object v2

    .line 169
    .end local v1           #n:I
    :cond_0
    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 172
    .restart local v1       #n:I
    :cond_1
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    .line 173
    const-string v2, "\u521d\u5341"

    goto :goto_1

    .line 175
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/sec/Lunar;->chineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static final leapDays(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/Lunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/android/internal/policy/impl/sec/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 47
    const/16 v0, 0x1e

    .line 51
    :goto_0
    return v0

    .line 49
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final leapMonth(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/policy/impl/sec/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 184
    .local v1, today:Ljava/util/Calendar;
    sget-object v2, Lcom/android/internal/policy/impl/sec/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "2003\u5e741\u67081\u65e5"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 185
    new-instance v0, Lcom/android/internal/policy/impl/sec/Lunar;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/Lunar;-><init>(Ljava/util/Calendar;)V

    .line 187
    .local v0, lunar:Lcom/android/internal/policy/impl/sec/Lunar;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5317\u4eac\u65f6\u95f4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/sec/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3000\u519c\u5386"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private static final monthDays(II)I
    .locals 4
    .parameter "y"
    .parameter "m"

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/policy/impl/sec/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x1

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    const/16 v0, 0x1d

    .line 64
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static final yearDays(I)I
    .locals 6
    .parameter "y"

    .prologue
    .line 36
    const/16 v1, 0x15c

    .line 37
    .local v1, sum:I
    const v0, 0x8000

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 38
    sget-object v2, Lcom/android/internal/policy/impl/sec/Lunar;->lunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 37
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/Lunar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public final animalsYear()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u9f20"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u725b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u864e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5154"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u9f99"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u86c7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u9a6c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7f8a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7334"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u732a"

    aput-object v2, v0, v1

    .line 70
    .local v0, Animals:[Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/sec/Lunar;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public final cyclical()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget v1, p0, Lcom/android/internal/policy/impl/sec/Lunar;->year:I

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 83
    .local v0, num:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/Lunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/policy/impl/sec/Lunar;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/Lunar;->leap:Z

    if-eqz v0, :cond_0

    const-string v0, "\u95f0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/sec/Lunar;->chineseNumber:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/policy/impl/sec/Lunar;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/Lunar;->day:I

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/Lunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
