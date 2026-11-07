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
.field public static final whitelist test-api APRIL:I = 0x4

.field public static final whitelist test-api AUGUST:I = 0x8

.field public static final whitelist test-api DATE:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api DATETIME:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final whitelist test-api DECEMBER:I = 0xc

.field public static final whitelist test-api DURATION:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api DURATION_DAYTIME:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api EQUAL:I = 0x0

.field public static final whitelist test-api FEBRUARY:I = 0x2

.field public static final whitelist test-api FIELD_UNDEFINED:I = -0x80000000

.field public static final whitelist test-api GDAY:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api GMONTH:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api GMONTHDAY:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api GREATER:I = 0x1

.field public static final whitelist test-api GYEAR:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api GYEARMONTH:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final whitelist test-api INDETERMINATE:I = 0x2

.field public static final whitelist test-api JANUARY:I = 0x1

.field public static final whitelist test-api JULY:I = 0x7

.field public static final whitelist test-api JUNE:I = 0x6

.field public static final whitelist test-api LESSER:I = -0x1

.field public static final whitelist test-api MARCH:I = 0x3

.field public static final whitelist test-api MAX_TIMEZONE_OFFSET:I = -0x348

.field public static final whitelist test-api MAY:I = 0x5

.field public static final whitelist test-api MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final whitelist test-api MIN_TIMEZONE_OFFSET:I = 0x348

.field public static final whitelist test-api MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final whitelist test-api NOVEMBER:I = 0xb

.field public static final whitelist test-api OCTOBER:I = 0xa

.field public static final whitelist test-api SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

.field public static final whitelist test-api SEPTEMBER:I = 0x9

.field public static final whitelist test-api TIME:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 129
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "YEARS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants-IA;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 134
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "MONTHS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants-IA;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 139
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "DAYS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants-IA;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 144
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "HOURS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants-IA;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 149
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "MINUTES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants-IA;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 154
    new-instance v0, Ljavax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "SECONDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants-IA;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 206
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "dateTime"

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    .line 211
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "time"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    .line 216
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "date"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    .line 221
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "gYearMonth"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    .line 226
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "gMonthDay"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    .line 231
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "gYear"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    .line 236
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "gMonth"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    .line 241
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "gDay"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    .line 246
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "duration"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DURATION:Ljavax/xml/namespace/QName;

    .line 251
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "dayTimeDuration"

    const-string v2, "http://www.w3.org/2003/11/xpath-datatypes"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Ljavax/xml/namespace/QName;

    .line 256
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "yearMonthDuration"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method
