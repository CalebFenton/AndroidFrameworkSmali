.class Ljava/text/DateFormat$DateFormatGetter;
.super Ljava/lang/Object;
.source "DateFormat.java"

# interfaces
.implements Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateFormatGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
        "<",
        "Ljava/text/spi/DateFormatProvider;",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INSTANCE:Ljava/text/DateFormat$DateFormatGetter;


# direct methods
.method static synthetic -get0()Ljava/text/DateFormat$DateFormatGetter;
    .locals 1

    #@0
    sget-object v0, Ljava/text/DateFormat$DateFormatGetter;->INSTANCE:Ljava/text/DateFormat$DateFormatGetter;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/text/DateFormat$DateFormatGetter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    #@b
    .line 1015
    new-instance v0, Ljava/text/DateFormat$DateFormatGetter;

    #@d
    invoke-direct {v0}, Ljava/text/DateFormat$DateFormatGetter;-><init>()V

    #@10
    sput-object v0, Ljava/text/DateFormat$DateFormatGetter;->INSTANCE:Ljava/text/DateFormat$DateFormatGetter;

    #@12
    .line 1013
    return-void

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "dateFormatProvider"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1017
    check-cast p1, Ljava/text/spi/DateFormatProvider;

    #@2
    .end local p1    # "dateFormatProvider":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/text/DateFormat$DateFormatGetter;->getObject(Ljava/text/spi/DateFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs getObject(Ljava/text/spi/DateFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormat;
    .locals 7
    .param p1, "dateFormatProvider"    # Ljava/text/spi/DateFormatProvider;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1021
    sget-boolean v3, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    array-length v3, p4

    #@7
    const/4 v6, 0x3

    #@8
    if-ne v3, v6, :cond_0

    #@a
    move v3, v4

    #@b
    :goto_0
    if-nez v3, :cond_1

    #@d
    new-instance v3, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v3

    #@13
    :cond_0
    move v3, v5

    #@14
    goto :goto_0

    #@15
    .line 1023
    :cond_1
    aget-object v3, p4, v5

    #@17
    check-cast v3, Ljava/lang/Integer;

    #@19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v2

    #@1d
    .line 1024
    .local v2, "timeStyle":I
    aget-object v3, p4, v4

    #@1f
    check-cast v3, Ljava/lang/Integer;

    #@21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v0

    #@25
    .line 1025
    .local v0, "dateStyle":I
    const/4 v3, 0x2

    #@26
    aget-object v3, p4, v3

    #@28
    check-cast v3, Ljava/lang/Integer;

    #@2a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2d
    move-result v1

    #@2e
    .line 1027
    .local v1, "flags":I
    packed-switch v1, :pswitch_data_0

    #@31
    .line 1035
    sget-boolean v3, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    #@33
    if-nez v3, :cond_2

    #@35
    new-instance v3, Ljava/lang/AssertionError;

    #@37
    const-string/jumbo v4, "should not happen"

    #@3a
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3d
    throw v3

    #@3e
    .line 1029
    :pswitch_0
    invoke-virtual {p1, v2, p2}, Ljava/text/spi/DateFormatProvider;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@41
    move-result-object v3

    #@42
    return-object v3

    #@43
    .line 1031
    :pswitch_1
    invoke-virtual {p1, v0, p2}, Ljava/text/spi/DateFormatProvider;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@46
    move-result-object v3

    #@47
    return-object v3

    #@48
    .line 1033
    :pswitch_2
    invoke-virtual {p1, v0, v2, p2}, Ljava/text/spi/DateFormatProvider;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    #@4b
    move-result-object v3

    #@4c
    return-object v3

    #@4d
    .line 1038
    :cond_2
    const/4 v3, 0x0

    #@4e
    return-object v3

    #@4f
    .line 1027
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
