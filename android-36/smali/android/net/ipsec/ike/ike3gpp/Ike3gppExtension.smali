.class public final Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
.super Ljava/lang/Object;
.source "Ike3gppExtension.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;
    }
.end annotation


# instance fields
.field private final blacklist mIke3gppDataListener:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

.field private final blacklist mIke3gppParams:Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;


# direct methods
.method public constructor whitelist <init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;)V
    .registers 4
    .param p1, "ike3gppParams"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;
    .param p2, "ike3gppDataListener"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "ike3gppParams must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    const-string v0, "ike3gppDataListener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppParams:Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    .line 60
    iput-object p2, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppDataListener:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 83
    return v1

    .line 86
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 88
    .local v0, "other":Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    iget-object v2, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppParams:Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    iget-object v3, v0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppParams:Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppDataListener:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    iget-object v3, v0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppDataListener:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 88
    :goto_20
    return v1
.end method

.method public whitelist getIke3gppDataListener()Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppDataListener:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    return-object v0
.end method

.method public whitelist getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppParams:Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 77
    iget-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppParams:Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    iget-object v1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->mIke3gppDataListener:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
