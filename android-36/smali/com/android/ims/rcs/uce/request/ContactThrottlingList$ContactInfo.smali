.class Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;
.super Ljava/lang/Object;
.source "ContactThrottlingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfo"
.end annotation


# instance fields
.field blacklist mContactUri:Landroid/net/Uri;

.field blacklist mSipCode:I

.field blacklist mThrottleEndTimestamp:Ljava/time/Instant;


# direct methods
.method public constructor blacklist <init>(Landroid/net/Uri;ILjava/time/Instant;)V
    .registers 4
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "sipCode"    # I
    .param p3, "timestamp"    # Ljava/time/Instant;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;->mContactUri:Landroid/net/Uri;

    .line 42
    iput p2, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;->mSipCode:I

    .line 43
    iput-object p3, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;->mThrottleEndTimestamp:Ljava/time/Instant;

    .line 44
    return-void
.end method
