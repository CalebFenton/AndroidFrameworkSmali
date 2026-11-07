.class public final Lcom/android/server/IntentResolverProto;
.super Ljava/lang/Object;
.source "IntentResolverProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolverProto$ArrayMapEntry;
    }
.end annotation


# static fields
.field public static final blacklist BASE_MIME_TYPES:J = 0x20b00000002L

.field public static final blacklist FULL_MIME_TYPES:J = 0x20b00000001L

.field public static final blacklist MIME_TYPED_ACTIONS:J = 0x20b00000006L

.field public static final blacklist NON_DATA_ACTIONS:J = 0x20b00000005L

.field public static final blacklist SCHEMES:J = 0x20b00000004L

.field public static final blacklist WILD_MIME_TYPES:J = 0x20b00000003L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
