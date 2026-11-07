.class public final Lcom/android/server/AppStateTrackerProto$ExemptedPackage;
.super Ljava/lang/Object;
.source "AppStateTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExemptedPackage"
.end annotation


# static fields
.field public static final blacklist PACKAGE_NAME:J = 0x10900000002L

.field public static final blacklist USER_ID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/AppStateTrackerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AppStateTrackerProto;
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
