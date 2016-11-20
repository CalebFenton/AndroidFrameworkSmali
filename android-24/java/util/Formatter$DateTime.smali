.class Ljava/util/Formatter$DateTime;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTime"
.end annotation


# static fields
.field static final AM_PM:C = 'p'

.field static final CENTURY:C = 'C'

.field static final DATE:C = 'D'

.field static final DATE_TIME:C = 'c'

.field static final DAY_OF_MONTH:C = 'e'

.field static final DAY_OF_MONTH_0:C = 'd'

.field static final DAY_OF_YEAR:C = 'j'

.field static final HOUR:C = 'l'

.field static final HOUR_0:C = 'I'

.field static final HOUR_OF_DAY:C = 'k'

.field static final HOUR_OF_DAY_0:C = 'H'

.field static final ISO_STANDARD_DATE:C = 'F'

.field static final MILLISECOND:C = 'L'

.field static final MILLISECOND_SINCE_EPOCH:C = 'Q'

.field static final MINUTE:C = 'M'

.field static final MONTH:C = 'm'

.field static final NAME_OF_DAY:C = 'A'

.field static final NAME_OF_DAY_ABBREV:C = 'a'

.field static final NAME_OF_MONTH:C = 'B'

.field static final NAME_OF_MONTH_ABBREV:C = 'b'

.field static final NAME_OF_MONTH_ABBREV_X:C = 'h'

.field static final NANOSECOND:C = 'N'

.field static final SECOND:C = 'S'

.field static final SECONDS_SINCE_EPOCH:C = 's'

.field static final TIME:C = 'T'

.field static final TIME_12_HOUR:C = 'r'

.field static final TIME_24_HOUR:C = 'R'

.field static final YEAR_2:C = 'y'

.field static final YEAR_4:C = 'Y'

.field static final ZONE:C = 'Z'

.field static final ZONE_NUMERIC:C = 'z'


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isValid(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4480
    packed-switch p0, :pswitch_data_0

    #@3
    .line 4527
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 4525
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 4480
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
