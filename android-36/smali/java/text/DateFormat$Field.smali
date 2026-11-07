.class public Ljava/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final whitelist test-api AM_PM:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api DAY_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api DAY_OF_WEEK:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api DAY_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api ERA:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api HOUR0:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api HOUR1:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api MILLISECOND:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api MINUTE:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api MONTH:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api SECOND:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api TIME_ZONE:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final whitelist test-api YEAR:Ljava/text/DateFormat$Field;

.field private static final greylist-max-o calendarToFieldMapping:[Ljava/text/DateFormat$Field;

.field private static final greylist-max-o instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x6744fc81f123e710L


# instance fields
.field private greylist-max-o calendarField:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 903
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    .line 906
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/text/DateFormat$Field;

    sput-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    .line 998
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 1003
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "year"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 1008
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "month"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 1013
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 1020
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour of day 1"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 1026
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour of day"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 1032
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "minute"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 1037
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "second"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 1042
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "millisecond"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 1048
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of week"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 1054
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of year"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 1060
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of week in month"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 1067
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "week of year"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 1073
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "week of month"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 1080
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "am pm"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 1087
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour 1"

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 1093
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 1099
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "time zone"

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I

    .line 944
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 945
    iput p2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    .line 946
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/DateFormat$Field;

    if-ne v0, v1, :cond_18

    .line 947
    sget-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    if-ltz p2, :cond_18

    .line 950
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    aput-object p0, v0, p2

    .line 953
    :cond_18
    return-void
.end method

.method public static whitelist test-api ofCalendarField(I)Ljava/text/DateFormat$Field;
    .registers 4
    .param p0, "calendarField"    # I

    .line 925
    if-ltz p0, :cond_c

    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 930
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    aget-object v0, v0, p0

    return-object v0

    .line 927
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Calendar constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCalendarField()I
    .registers 2

    .line 966
    iget v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    return v0
.end method

.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 979
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/DateFormat$Field;

    if-ne v0, v1, :cond_1d

    .line 983
    sget-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 984
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 985
    return-object v0

    .line 987
    :cond_15
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 980
    .end local v0    # "instance":Ljava/lang/Object;
    :cond_1d
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
