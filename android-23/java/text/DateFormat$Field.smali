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

.field private static final serialVersionUID:J = 0x6744fc81f123e710L

.field private static table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 694
    new-instance v0, Ljava/util/Hashtable;

    #@3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@6
    sput-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    #@8
    .line 699
    new-instance v0, Ljava/text/DateFormat$Field;

    #@a
    const-string/jumbo v1, "era"

    #@d
    const/4 v2, 0x0

    #@e
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@11
    sput-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    #@13
    .line 704
    new-instance v0, Ljava/text/DateFormat$Field;

    #@15
    const-string/jumbo v1, "year"

    #@18
    const/4 v2, 0x1

    #@19
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    #@1e
    .line 709
    new-instance v0, Ljava/text/DateFormat$Field;

    #@20
    const-string/jumbo v1, "month"

    #@23
    const/4 v2, 0x2

    #@24
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@29
    .line 714
    new-instance v0, Ljava/text/DateFormat$Field;

    #@2b
    const-string/jumbo v1, "hour of day"

    #@2e
    const/16 v2, 0xb

    #@30
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@33
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    #@35
    .line 719
    new-instance v0, Ljava/text/DateFormat$Field;

    #@37
    const-string/jumbo v1, "hour of day 1"

    #@3a
    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@3d
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    #@3f
    .line 724
    new-instance v0, Ljava/text/DateFormat$Field;

    #@41
    const-string/jumbo v1, "minute"

    #@44
    const/16 v2, 0xc

    #@46
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@49
    sput-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    #@4b
    .line 729
    new-instance v0, Ljava/text/DateFormat$Field;

    #@4d
    const-string/jumbo v1, "second"

    #@50
    const/16 v2, 0xd

    #@52
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@55
    sput-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    #@57
    .line 734
    new-instance v0, Ljava/text/DateFormat$Field;

    #@59
    const-string/jumbo v1, "millisecond"

    #@5c
    const/16 v2, 0xe

    #@5e
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@61
    sput-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    #@63
    .line 739
    new-instance v0, Ljava/text/DateFormat$Field;

    #@65
    const-string/jumbo v1, "day of week"

    #@68
    const/4 v2, 0x7

    #@69
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@6c
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@6e
    .line 744
    new-instance v0, Ljava/text/DateFormat$Field;

    #@70
    const-string/jumbo v1, "day of month"

    #@73
    const/4 v2, 0x5

    #@74
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@77
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    #@79
    .line 749
    new-instance v0, Ljava/text/DateFormat$Field;

    #@7b
    const-string/jumbo v1, "day of year"

    #@7e
    const/4 v2, 0x6

    #@7f
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@82
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    #@84
    .line 754
    new-instance v0, Ljava/text/DateFormat$Field;

    #@86
    const-string/jumbo v1, "day of week in month"

    #@89
    .line 755
    const/16 v2, 0x8

    #@8b
    .line 754
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@8e
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    #@90
    .line 760
    new-instance v0, Ljava/text/DateFormat$Field;

    #@92
    const-string/jumbo v1, "week of year"

    #@95
    .line 761
    const/4 v2, 0x3

    #@96
    .line 760
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@99
    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    #@9b
    .line 766
    new-instance v0, Ljava/text/DateFormat$Field;

    #@9d
    const-string/jumbo v1, "week of month"

    #@a0
    .line 767
    const/4 v2, 0x4

    #@a1
    .line 766
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@a4
    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    #@a6
    .line 772
    new-instance v0, Ljava/text/DateFormat$Field;

    #@a8
    const-string/jumbo v1, "am pm"

    #@ab
    const/16 v2, 0x9

    #@ad
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@b0
    sput-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    #@b2
    .line 777
    new-instance v0, Ljava/text/DateFormat$Field;

    #@b4
    const-string/jumbo v1, "hour"

    #@b7
    const/16 v2, 0xa

    #@b9
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@bc
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    #@be
    .line 782
    new-instance v0, Ljava/text/DateFormat$Field;

    #@c0
    const-string/jumbo v1, "hour 1"

    #@c3
    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@c6
    sput-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    #@c8
    .line 787
    new-instance v0, Ljava/text/DateFormat$Field;

    #@ca
    const-string/jumbo v1, "time zone"

    #@cd
    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@d0
    sput-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@d2
    .line 690
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "calendarField"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 804
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@4
    .line 792
    iput v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    #@6
    .line 805
    iput p2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    #@8
    .line 806
    if-eq p2, v0, :cond_0

    #@a
    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    #@c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 807
    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    #@18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 803
    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Ljava/text/DateFormat$Field;
    .locals 3
    .param p0, "calendarField"    # I

    #@0
    .prologue
    .line 833
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0x11

    #@4
    if-lt p0, v0, :cond_1

    #@6
    .line 834
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Field out of range: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 836
    :cond_1
    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    #@22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/text/DateFormat$Field;

    #@2c
    return-object v0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 1

    #@0
    .prologue
    .line 817
    iget v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    #@2
    return v0
.end method
