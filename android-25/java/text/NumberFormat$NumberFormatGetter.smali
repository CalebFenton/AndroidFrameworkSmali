.class Ljava/text/NumberFormat$NumberFormatGetter;
.super Ljava/lang/Object;
.source "NumberFormat.java"

# interfaces
.implements Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberFormatGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
        "<",
        "Ljava/text/spi/NumberFormatProvider;",
        "Ljava/text/NumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INSTANCE:Ljava/text/NumberFormat$NumberFormatGetter;


# direct methods
.method static synthetic -get0()Ljava/text/NumberFormat$NumberFormatGetter;
    .locals 1

    #@0
    sget-object v0, Ljava/text/NumberFormat$NumberFormatGetter;->INSTANCE:Ljava/text/NumberFormat$NumberFormatGetter;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/text/NumberFormat$NumberFormatGetter;

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
    sput-boolean v0, Ljava/text/NumberFormat$NumberFormatGetter;->-assertionsDisabled:Z

    #@b
    .line 1127
    new-instance v0, Ljava/text/NumberFormat$NumberFormatGetter;

    #@d
    invoke-direct {v0}, Ljava/text/NumberFormat$NumberFormatGetter;-><init>()V

    #@10
    sput-object v0, Ljava/text/NumberFormat$NumberFormatGetter;->INSTANCE:Ljava/text/NumberFormat$NumberFormatGetter;

    #@12
    .line 1124
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
    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "numberFormatProvider"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1129
    check-cast p1, Ljava/text/spi/NumberFormatProvider;

    #@2
    .end local p1    # "numberFormatProvider":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/text/NumberFormat$NumberFormatGetter;->getObject(Ljava/text/spi/NumberFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/NumberFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs getObject(Ljava/text/spi/NumberFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/NumberFormat;
    .locals 4
    .param p1, "numberFormatProvider"    # Ljava/text/spi/NumberFormatProvider;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1133
    sget-boolean v3, Ljava/text/NumberFormat$NumberFormatGetter;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    array-length v3, p4

    #@7
    if-ne v3, v1, :cond_0

    #@9
    :goto_0
    if-nez v1, :cond_1

    #@b
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v1

    #@11
    :cond_0
    move v1, v2

    #@12
    goto :goto_0

    #@13
    .line 1134
    :cond_1
    aget-object v1, p4, v2

    #@15
    check-cast v1, Ljava/lang/Integer;

    #@17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v0

    #@1b
    .line 1136
    .local v0, "choice":I
    packed-switch v0, :pswitch_data_0

    #@1e
    .line 1146
    sget-boolean v1, Ljava/text/NumberFormat$NumberFormatGetter;->-assertionsDisabled:Z

    #@20
    if-nez v1, :cond_2

    #@22
    new-instance v1, Ljava/lang/AssertionError;

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2b
    throw v1

    #@2c
    .line 1138
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 1140
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@34
    move-result-object v1

    #@35
    return-object v1

    #@36
    .line 1142
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@39
    move-result-object v1

    #@3a
    return-object v1

    #@3b
    .line 1144
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@3e
    move-result-object v1

    #@3f
    return-object v1

    #@40
    .line 1149
    :cond_2
    const/4 v1, 0x0

    #@41
    return-object v1

    #@42
    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
