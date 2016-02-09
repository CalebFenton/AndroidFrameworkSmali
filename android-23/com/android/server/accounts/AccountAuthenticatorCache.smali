.class Lcom/android/server/accounts/AccountAuthenticatorCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Lcom/android/server/accounts/IAccountAuthenticatorCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;",
        "Lcom/android/server/accounts/IAccountAuthenticatorCache;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 48
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;-><init>(Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;)V

    #@6
    sput-object v0, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    #@8
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 51
    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    #@3
    .line 52
    const-string/jumbo v3, "android.accounts.AccountAuthenticator"

    #@6
    .line 53
    const-string/jumbo v4, "account-authenticator"

    #@9
    sget-object v5, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    .line 51
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    #@10
    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 1
    .param p1, "type"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 318
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    #@2
    .line 58
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v8

    #@6
    .line 62
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    #@7
    :try_start_0
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 64
    .local v1, "accountType":Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    const/4 v2, 0x0

    #@d
    .line 63
    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10
    move-result v3

    #@11
    .line 66
    .local v3, "labelId":I
    const/4 v0, 0x1

    #@12
    const/4 v2, 0x0

    #@13
    .line 65
    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@16
    move-result v4

    #@17
    .line 68
    .local v4, "iconId":I
    const/4 v0, 0x3

    #@18
    const/4 v2, 0x0

    #@19
    .line 67
    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1c
    move-result v5

    #@1d
    .line 70
    .local v5, "smallIconId":I
    const/4 v0, 0x4

    #@1e
    const/4 v2, 0x0

    #@1f
    .line 69
    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@22
    move-result v6

    #@23
    .line 72
    .local v6, "prefId":I
    const/4 v0, 0x5

    #@24
    const/4 v2, 0x0

    #@25
    .line 71
    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@28
    move-result v7

    #@29
    .line 73
    .local v7, "customTokens":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 74
    const/4 v0, 0x0

    #@30
    .line 79
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@33
    .line 74
    return-object v0

    #@34
    .line 76
    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    #@36
    move-object v2, p2

    #@37
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 79
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@3d
    .line 76
    return-object v0

    #@3e
    .line 78
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v3    # "labelId":I
    .end local v4    # "iconId":I
    .end local v5    # "smallIconId":I
    .end local v6    # "prefId":I
    .end local v7    # "customTokens":Z
    :catchall_0
    move-exception v0

    #@3f
    .line 79
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@42
    .line 78
    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountAuthenticatorCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
