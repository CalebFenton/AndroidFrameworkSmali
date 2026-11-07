.class public final Lcom/android/server/am/AppsStartInfoProto$Package;
.super Ljava/lang/Object;
.source "AppsStartInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppsStartInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Package"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppsStartInfoProto$Package$User;
    }
.end annotation


# static fields
.field public static final blacklist PACKAGE_NAME:J = 0x10900000001L

.field public static final blacklist USERS:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/AppsStartInfoProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppsStartInfoProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
