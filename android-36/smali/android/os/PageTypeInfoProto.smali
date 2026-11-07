.class public final Landroid/os/PageTypeInfoProto;
.super Ljava/lang/Object;
.source "PageTypeInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PageTypeInfoProto$Block;,
        Landroid/os/PageTypeInfoProto$MigrateType;
    }
.end annotation


# static fields
.field public static final greylist-max-o BLOCKS:J = 0x20b00000004L

.field public static final greylist-max-o MIGRATE_TYPES:J = 0x20b00000003L

.field public static final greylist-max-o PAGES_PER_BLOCK:J = 0x10500000002L

.field public static final greylist-max-o PAGE_BLOCK_ORDER:J = 0x10500000001L


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
