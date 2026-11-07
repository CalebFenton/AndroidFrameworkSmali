.class public final Lcom/android/server/am/UserControllerProto$UserProfile;
.super Ljava/lang/Object;
.source "UserControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserProfile"
.end annotation


# static fields
.field public static final blacklist PROFILE:J = 0x10500000002L

.field public static final blacklist USER:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/UserControllerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/UserControllerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
