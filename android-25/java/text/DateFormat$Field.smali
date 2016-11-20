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
.field public static final AM_PM:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final ERA:Ljava/text/DateFormat$Field;

.field public static final HOUR0:Ljava/text/DateFormat$Field;

.field public static final HOUR1:Ljava/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

.field public static final MILLISECOND:Ljava/text/DateFormat$Field;

.field public static final MINUTE:Ljava/text/DateFormat$Field;

.field public static final MONTH:Ljava/text/DateFormat$Field;

.field public static final SECOND:Ljava/text/DateFormat$Field;

.field public static final TIME_ZONE:Ljava/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final YEAR:Ljava/text/DateFormat$Field;

.field private static final calendarToFieldMapping:[Ljava/text/DateFormat$Field;

.field private static final instanceMap:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x6744fc81f123e710L


# instance fields
.field private calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 812
    new-instance v0, Ljava/util/HashMap;

    #@3
    const/16 v1, 0x12

    #@5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@8
    sput-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    #@a
    .line 816
    const/16 v0, 0x11

    #@c
    new-array v0, v0, [Ljava/text/DateFormat$Field;

    #@e
    .line 815
    sput-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    #@10
    .line 905
    new-instance v0, Ljava/text/DateFormat$Field;

    #@12
    const-string/jumbo v1, "era"

    #@15
    const/4 v2, 0x0

    #@16
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@19
    sput-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    #@1b
    .line 910
    new-instance v0, Ljava/text/DateFormat$Field;

    #@1d
    const-string/jumbo v1, "year"

    #@20
    const/4 v2, 0x1

    #@21
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@24
    sput-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    #@26
    .line 915
    new-instance v0, Ljava/text/DateFormat$Field;

    #@28
    const-string/jumbo v1, "month"

    #@2b
    const/4 v2, 0x2

    #@2c
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@2f
    sput-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@31
    .line 920
    new-instance v0, Ljava/text/DateFormat$Field;

    #@33
    .line 921
    const-string/jumbo v1, "day of month"

    #@36
    const/4 v2, 0x5

    #@37
    .line 920
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    #@3c
    .line 927
    new-instance v0, Ljava/text/DateFormat$Field;

    #@3e
    const-string/jumbo v1, "hour of day 1"

    #@41
    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    #@46
    .line 933
    new-instance v0, Ljava/text/DateFormat$Field;

    #@48
    .line 934
    const-string/jumbo v1, "hour of day"

    #@4b
    const/16 v2, 0xb

    #@4d
    .line 933
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@50
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    #@52
    .line 939
    new-instance v0, Ljava/text/DateFormat$Field;

    #@54
    const-string/jumbo v1, "minute"

    #@57
    const/16 v2, 0xc

    #@59
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@5c
    sput-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    #@5e
    .line 944
    new-instance v0, Ljava/text/DateFormat$Field;

    #@60
    const-string/jumbo v1, "second"

    #@63
    const/16 v2, 0xd

    #@65
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@68
    sput-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    #@6a
    .line 949
    new-instance v0, Ljava/text/DateFormat$Field;

    #@6c
    .line 950
    const-string/jumbo v1, "millisecond"

    #@6f
    const/16 v2, 0xe

    #@71
    .line 949
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@74
    sput-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    #@76
    .line 955
    new-instance v0, Ljava/text/DateFormat$Field;

    #@78
    .line 956
    const-string/jumbo v1, "day of week"

    #@7b
    const/4 v2, 0x7

    #@7c
    .line 955
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@7f
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@81
    .line 961
    new-instance v0, Ljava/text/DateFormat$Field;

    #@83
    .line 962
    const-string/jumbo v1, "day of year"

    #@86
    const/4 v2, 0x6

    #@87
    .line 961
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@8a
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    #@8c
    .line 968
    new-instance v0, Ljava/text/DateFormat$Field;

    #@8e
    const-string/jumbo v1, "day of week in month"

    #@91
    .line 969
    const/16 v2, 0x8

    #@93
    .line 968
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@96
    .line 967
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    #@98
    .line 974
    new-instance v0, Ljava/text/DateFormat$Field;

    #@9a
    .line 975
    const-string/jumbo v1, "week of year"

    #@9d
    const/4 v2, 0x3

    #@9e
    .line 974
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@a1
    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    #@a3
    .line 980
    new-instance v0, Ljava/text/DateFormat$Field;

    #@a5
    .line 981
    const-string/jumbo v1, "week of month"

    #@a8
    const/4 v2, 0x4

    #@a9
    .line 980
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@ac
    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    #@ae
    .line 987
    new-instance v0, Ljava/text/DateFormat$Field;

    #@b0
    .line 988
    const-string/jumbo v1, "am pm"

    #@b3
    const/16 v2, 0x9

    #@b5
    .line 987
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@b8
    sput-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    #@ba
    .line 994
    new-instance v0, Ljava/text/DateFormat$Field;

    #@bc
    const-string/jumbo v1, "hour 1"

    #@bf
    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    #@c4
    .line 1000
    new-instance v0, Ljava/text/DateFormat$Field;

    #@c6
    .line 1001
    const-string/jumbo v1, "hour"

    #@c9
    const/16 v2, 0xa

    #@cb
    .line 1000
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@ce
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    #@d0
    .line 1006
    new-instance v0, Ljava/text/DateFormat$Field;

    #@d2
    const-string/jumbo v1, "time zone"

    #@d5
    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@d8
    sput-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@da
    .line 806
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I

    #@0
    .prologue
    .line 853
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 854
    iput p2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    #@5
    .line 855
    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    const-class v1, Ljava/text/DateFormat$Field;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 856
    sget-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 857
    if-ltz p2, :cond_0

    #@14
    .line 859
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    #@16
    aput-object p0, v0, p2

    #@18
    .line 852
    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Ljava/text/DateFormat$Field;
    .locals 3
    .param p0, "calendarField"    # I

    #@0
    .prologue
    .line 834
    if-ltz p0, :cond_0

    #@2
    .line 835
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    #@4
    array-length v0, v0

    #@5
    .line 834
    if-lt p0, v0, :cond_1

    #@7
    .line 836
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Unknown Calendar constant "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 839
    :cond_1
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    #@23
    aget-object v0, v0, p0

    #@25
    return-object v0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 1

    #@0
    .prologue
    .line 875
    iget v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    #@2
    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 886
    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    const-class v2, Ljava/text/DateFormat$Field;

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 887
    new-instance v1, Ljava/io/InvalidObjectException;

    #@a
    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    #@d
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 890
    :cond_0
    sget-object v1, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    #@13
    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .line 891
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_1

    #@1d
    .line 892
    return-object v0

    #@1e
    .line 894
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    #@20
    const-string/jumbo v2, "unknown attribute name"

    #@23
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method
