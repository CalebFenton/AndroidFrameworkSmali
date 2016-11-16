.class Landroid/security/net/config/NetworkSecurityConfig$1;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/security/net/config/CertificatesEntryRef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method constructor <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 0
    .param p1, "this$0"    # Landroid/security/net/config/NetworkSecurityConfig;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$1;->this$0:Landroid/security/net/config/NetworkSecurityConfig;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/security/net/config/CertificatesEntryRef;Landroid/security/net/config/CertificatesEntryRef;)I
    .locals 2
    .param p1, "lhs"    # Landroid/security/net/config/CertificatesEntryRef;
    .param p2, "rhs"    # Landroid/security/net/config/CertificatesEntryRef;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 63
    invoke-virtual {p1}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 64
    invoke-virtual {p2}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/security/net/config/CertificatesEntryRef;->overridesPins()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    const/4 v0, 0x1

    #@17
    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 62
    check-cast p1, Landroid/security/net/config/CertificatesEntryRef;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/security/net/config/CertificatesEntryRef;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/NetworkSecurityConfig$1;->compare(Landroid/security/net/config/CertificatesEntryRef;Landroid/security/net/config/CertificatesEntryRef;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
