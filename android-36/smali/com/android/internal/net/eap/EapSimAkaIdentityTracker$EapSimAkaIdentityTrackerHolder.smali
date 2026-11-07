.class Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$EapSimAkaIdentityTrackerHolder;
.super Ljava/lang/Object;
.source "EapSimAkaIdentityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EapSimAkaIdentityTrackerHolder"
.end annotation


# static fields
.field static final blacklist INSTANCE:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 157
    new-instance v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    invoke-direct {v0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$EapSimAkaIdentityTrackerHolder;->INSTANCE:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
