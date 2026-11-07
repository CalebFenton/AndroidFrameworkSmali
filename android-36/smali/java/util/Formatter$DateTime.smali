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
.field static final greylist-max-o AM_PM:C = 'p'

.field static final greylist-max-o CENTURY:C = 'C'

.field static final greylist-max-o DATE:C = 'D'

.field static final greylist-max-o DATE_TIME:C = 'c'

.field static final greylist-max-o DAY_OF_MONTH:C = 'e'

.field static final greylist-max-o DAY_OF_MONTH_0:C = 'd'

.field static final greylist-max-o DAY_OF_YEAR:C = 'j'

.field static final greylist-max-o HOUR:C = 'l'

.field static final greylist-max-o HOUR_0:C = 'I'

.field static final greylist-max-o HOUR_OF_DAY:C = 'k'

.field static final greylist-max-o HOUR_OF_DAY_0:C = 'H'

.field static final greylist-max-o ISO_STANDARD_DATE:C = 'F'

.field static final greylist-max-o MILLISECOND:C = 'L'

.field static final greylist-max-o MILLISECOND_SINCE_EPOCH:C = 'Q'

.field static final greylist-max-o MINUTE:C = 'M'

.field static final greylist-max-o MONTH:C = 'm'

.field static final greylist-max-o NAME_OF_DAY:C = 'A'

.field static final greylist-max-o NAME_OF_DAY_ABBREV:C = 'a'

.field static final greylist-max-o NAME_OF_MONTH:C = 'B'

.field static final greylist-max-o NAME_OF_MONTH_ABBREV:C = 'b'

.field static final greylist-max-o NAME_OF_MONTH_ABBREV_X:C = 'h'

.field static final greylist-max-o NANOSECOND:C = 'N'

.field static final greylist-max-o SECOND:C = 'S'

.field static final greylist-max-o SECONDS_SINCE_EPOCH:C = 's'

.field static final greylist-max-o TIME:C = 'T'

.field static final greylist-max-o TIME_12_HOUR:C = 'r'

.field static final greylist-max-o TIME_24_HOUR:C = 'R'

.field static final greylist-max-o YEAR_2:C = 'y'

.field static final greylist-max-o YEAR_4:C = 'Y'

.field static final greylist-max-o ZONE:C = 'Z'

.field static final greylist-max-o ZONE_NUMERIC:C = 'z'


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o isValid(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4997
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_a

    .line 5005
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_9

    .line 4999
    :pswitch_6
    goto :goto_9

    .line 5004
    :pswitch_7
    goto :goto_9

    .line 5002
    :pswitch_8
    nop

    .line 4997
    :goto_9
    return v0

    :pswitch_data_a
    .packed-switch 0x41
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method
