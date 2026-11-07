.class public final Landroid/service/pm/PackageProto$InstallSourceProto;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InstallSourceProto"
.end annotation


# static fields
.field public static final blacklist INITIATING_PACKAGE_NAME:J = 0x10900000001L

.field public static final blacklist ORIGINATING_PACKAGE_NAME:J = 0x10900000002L

.field public static final blacklist UPDATE_OWNER_PACKAGE_NAME:J = 0x10900000003L


# direct methods
.method public constructor blacklist <init>(Landroid/service/pm/PackageProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/pm/PackageProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
