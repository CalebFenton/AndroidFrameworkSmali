.class public final Ljavax/xml/datatype/DatatypeConstants;
.super Ljava/lang/Object;
.source "DatatypeConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/datatype/DatatypeConstants$Field;
    }
.end annotation


# static fields
.field public static final APRIL:I = 0x4

.field public static final AUGUST:I = 0x8

.field public static final DATE:Ljavax/xml/namespace/QName;

.field public static final DATETIME:Ljavax/xml/namespace/QName;

.field public static final DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final DECEMBER:I = 0xc

.field public static final DURATION:Ljavax/xml/namespace/QName;

.field public static final DURATION_DAYTIME:Ljavax/xml/namespace/QName;

.field public static final DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

.field public static final EQUAL:I = 0x0

.field public static final FEBRUARY:I = 0x2

.field public static final FIELD_UNDEFINED:I = -0x80000000

.field public static final GDAY:Ljavax/xml/namespace/QName;

.field public static final GMONTH:Ljavax/xml/namespace/QName;

.field public static final GMONTHDAY:Ljavax/xml/namespace/QName;

.field public static final GREATER:I = 0x1

.field public static final GYEAR:Ljavax/xml/namespace/QName;

.field public static final GYEARMONTH:Ljavax/xml/namespace/QName;

.field public static final HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final INDETERMINATE:I = 0x2

.field public static final JANUARY:I = 0x1

.field public static final JULY:I = 0x7

.field public static final JUNE:I = 0x6

.field public static final LESSER:I = -0x1

.field public static final MARCH:I = 0x3

.field public static final MAX_TIMEZONE_OFFSET:I = -0x348

.field public static final MAY:I = 0x5

.field public static final MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final MIN_TIMEZONE_OFFSET:I = 0x348

.field public static final MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final NOVEMBER:I = 0xb

.field public static final OCTOBER:I = 0xa

.field public static final SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final SEPTEMBER:I = 0x9

.field public static final TIME:Ljavax/xml/namespace/QName;

.field public static final YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 129
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    #@3
    const-string/jumbo v1, "YEARS"

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants$Field;)V

    #@a
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@c
    .line 134
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    #@e
    const-string/jumbo v1, "MONTHS"

    #@11
    const/4 v2, 0x1

    #@12
    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants$Field;)V

    #@15
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@17
    .line 139
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    #@19
    const-string/jumbo v1, "DAYS"

    #@1c
    const/4 v2, 0x2

    #@1d
    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants$Field;)V

    #@20
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@22
    .line 144
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    #@24
    const-string/jumbo v1, "HOURS"

    #@27
    const/4 v2, 0x3

    #@28
    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants$Field;)V

    #@2b
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2d
    .line 149
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2f
    const-string/jumbo v1, "MINUTES"

    #@32
    const/4 v2, 0x4

    #@33
    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants$Field;)V

    #@36
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@38
    .line 154
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    #@3a
    const-string/jumbo v1, "SECONDS"

    #@3d
    const/4 v2, 0x5

    #@3e
    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants$Field;)V

    #@41
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@43
    .line 206
    new-instance v0, Ljavax/xml/namespace/QName;

    #@45
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@48
    const-string/jumbo v2, "dateTime"

    #@4b
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    #@50
    .line 211
    new-instance v0, Ljavax/xml/namespace/QName;

    #@52
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@55
    const-string/jumbo v2, "time"

    #@58
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5b
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    #@5d
    .line 216
    new-instance v0, Ljavax/xml/namespace/QName;

    #@5f
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@62
    const-string/jumbo v2, "date"

    #@65
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    #@6a
    .line 221
    new-instance v0, Ljavax/xml/namespace/QName;

    #@6c
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@6f
    const-string/jumbo v2, "gYearMonth"

    #@72
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    #@77
    .line 226
    new-instance v0, Ljavax/xml/namespace/QName;

    #@79
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@7c
    const-string/jumbo v2, "gMonthDay"

    #@7f
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@82
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    #@84
    .line 231
    new-instance v0, Ljavax/xml/namespace/QName;

    #@86
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@89
    const-string/jumbo v2, "gYear"

    #@8c
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8f
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    #@91
    .line 236
    new-instance v0, Ljavax/xml/namespace/QName;

    #@93
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@96
    const-string/jumbo v2, "gMonth"

    #@99
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9c
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    #@9e
    .line 241
    new-instance v0, Ljavax/xml/namespace/QName;

    #@a0
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@a3
    const-string/jumbo v2, "gDay"

    #@a6
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a9
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    #@ab
    .line 246
    new-instance v0, Ljavax/xml/namespace/QName;

    #@ad
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    #@b0
    const-string/jumbo v2, "duration"

    #@b3
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b6
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DURATION:Ljavax/xml/namespace/QName;

    #@b8
    .line 251
    new-instance v0, Ljavax/xml/namespace/QName;

    #@ba
    const-string/jumbo v1, "http://www.w3.org/2003/11/xpath-datatypes"

    #@bd
    const-string/jumbo v2, "dayTimeDuration"

    #@c0
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c3
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Ljavax/xml/namespace/QName;

    #@c5
    .line 256
    new-instance v0, Ljavax/xml/namespace/QName;

    #@c7
    const-string/jumbo v1, "http://www.w3.org/2003/11/xpath-datatypes"

    #@ca
    const-string/jumbo v2, "yearMonthDuration"

    #@cd
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d0
    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

    #@d2
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
