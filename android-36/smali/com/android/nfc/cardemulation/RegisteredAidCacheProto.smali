.class public final Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;
.super Ljava/lang/Object;
.source "RegisteredAidCacheProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredAidCacheProto$AidCacheEntry;
    }
.end annotation


# static fields
.field public static final blacklist AID_CACHE_ENTRIES:J = 0x20b00000001L

.field public static final blacklist PREFERRED_FOREGROUND_SERVICE:J = 0x10b00000002L

.field public static final blacklist PREFERRED_PAYMENT_SERVICE:J = 0x10b00000003L

.field public static final blacklist ROUTING_MANAGER:J = 0x10b00000004L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
