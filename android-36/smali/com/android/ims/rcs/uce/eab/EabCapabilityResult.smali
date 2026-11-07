.class public Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
.super Ljava/lang/Object;
.source "EabCapabilityResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/eab/EabCapabilityResult$QueryResult;
    }
.end annotation


# static fields
.field public static final blacklist EAB_CONTACT_EXPIRED_FAILURE:I = 0x2

.field public static final blacklist EAB_CONTACT_NOT_FOUND_FAILURE:I = 0x3

.field public static final blacklist EAB_CONTROLLER_DESTROYED_FAILURE:I = 0x1

.field public static final blacklist EAB_QUERY_SUCCESSFUL:I


# instance fields
.field private final blacklist mContactCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

.field private final blacklist mContactUri:Landroid/net/Uri;

.field private final blacklist mStatus:I


# direct methods
.method public constructor blacklist <init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V
    .registers 4
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "status"    # I
    .param p3, "capabilities"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p2, p0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->mStatus:I

    .line 70
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->mContactUri:Landroid/net/Uri;

    .line 71
    iput-object p3, p0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->mContactCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist getContact()Landroid/net/Uri;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getContactCapabilities()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->mContactCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-object v0
.end method

.method public blacklist getStatus()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->mStatus:I

    return v0
.end method
