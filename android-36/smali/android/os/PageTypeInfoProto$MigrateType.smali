.class public final Landroid/os/PageTypeInfoProto$MigrateType;
.super Ljava/lang/Object;
.source "PageTypeInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PageTypeInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MigrateType"
.end annotation


# static fields
.field public static final greylist-max-o FREE_PAGES_COUNT:J = 0x20500000004L

.field public static final greylist-max-o NODE:J = 0x10500000001L

.field public static final greylist-max-o TYPE:J = 0x10900000003L

.field public static final greylist-max-o ZONE:J = 0x10900000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/PageTypeInfoProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/PageTypeInfoProto;
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
