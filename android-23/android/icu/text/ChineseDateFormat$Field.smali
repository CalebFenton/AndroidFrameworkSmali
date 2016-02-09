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
.field public static final IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x46ce68aff2525d8aL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/icu/text/ChineseDateFormat$Field;

    #@2
    const-string/jumbo v1, "is leap month"

    #@5
    const/16 v2, 0x16

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/ChineseDateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    #@c
    .line 179
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    #@3
    .line 202
    return-void
.end method

.method public static ofCalendarField(I)Landroid/icu/text/DateFormat$Field;
    .locals 1
    .param p0, "calendarField"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 223
    const/16 v0, 0x16

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 224
    sget-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    #@6
    return-object v0

    #@7
    .line 226
    :cond_0
    invoke-static {p0}, Landroid/icu/text/DateFormat$Field;->ofCalendarField(I)Landroid/icu/text/DateFormat$Field;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/icu/text/ChineseDateFormat$Field;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Landroid/icu/text/ChineseDateFormat$Field;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 238
    new-instance v0, Ljava/io/InvalidObjectException;

    #@a
    const-string/jumbo v1, "A subclass of ChineseDateFormat.Field must implement readResolve."

    #@d
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/ChineseDateFormat$Field;->getName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    sget-object v1, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    #@17
    invoke-virtual {v1}, Landroid/icu/text/ChineseDateFormat$Field;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 241
    sget-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    #@23
    return-object v0

    #@24
    .line 243
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    #@26
    const-string/jumbo v1, "Unknown attribute name."

    #@29
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method
