.class public final Lcom/android/server/am/UserControllerProto;
.super Ljava/lang/Object;
.source "UserControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserControllerProto$UserProfile;,
        Lcom/android/server/am/UserControllerProto$User;
    }
.end annotation


# static fields
.field public static final blacklist CURRENT_PROFILES:J = 0x20500000006L

.field public static final blacklist CURRENT_USER:J = 0x10500000005L

.field public static final blacklist STARTED_USERS:J = 0x20b00000001L

.field public static final blacklist STARTED_USER_ARRAY:J = 0x20500000002L

.field public static final blacklist USER_LRU:J = 0x20500000003L

.field public static final blacklist USER_PROFILE_GROUP_IDS:J = 0x20b00000004L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
