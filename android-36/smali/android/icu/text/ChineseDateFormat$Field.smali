.class public Landroid/icu/text/ChineseDateFormat$Field;
.super Landroid/icu/text/DateFormat$Field;
.source "ChineseDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ChineseDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x46ce68aff2525d8aL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 197
    new-instance v0, Landroid/icu/text/ChineseDateFormat$Field;

    const-string v1, "is leap month"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ChineseDateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public static greylist-max-o ofCalendarField(I)Landroid/icu/text/DateFormat$Field;
    .registers 2
    .param p0, "calendarField"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    const/16 v0, 0x16

    if-ne p0, v0, :cond_7

    .line 233
    sget-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    return-object v0

    .line 235
    :cond_7
    invoke-static {p0}, Landroid/icu/text/DateFormat$Field;->ofCalendarField(I)Landroid/icu/text/DateFormat$Field;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/ChineseDateFormat$Field;

    if-ne v0, v1, :cond_23

    .line 250
    invoke-virtual {p0}, Landroid/icu/text/ChineseDateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/ChineseDateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 251
    sget-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    return-object v0

    .line 253
    :cond_1b
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Unknown attribute name."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_23
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "A subclass of ChineseDateFormat.Field must implement readResolve."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
