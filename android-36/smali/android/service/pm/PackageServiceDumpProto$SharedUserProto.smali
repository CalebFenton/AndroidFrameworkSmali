.class public final Landroid/service/pm/PackageServiceDumpProto$SharedUserProto;
.super Ljava/lang/Object;
.source "PackageServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SharedUserProto"
.end annotation


# static fields
.field public static final blacklist NAME:J = 0x10900000002L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/service/pm/PackageServiceDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/pm/PackageServiceDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
