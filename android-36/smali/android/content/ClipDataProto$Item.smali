.class public final Landroid/content/ClipDataProto$Item;
.super Ljava/lang/Object;
.source "ClipDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Item"
.end annotation


# static fields
.field public static final greylist-max-o HTML_TEXT:J = 0x10900000001L

.field public static final greylist-max-o INTENT:J = 0x10b00000004L

.field public static final greylist-max-o NOTHING:J = 0x10800000005L

.field public static final greylist-max-o TEXT:J = 0x10900000002L

.field public static final greylist-max-o URI:J = 0x10900000003L


# direct methods
.method public constructor blacklist <init>(Landroid/content/ClipDataProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/content/ClipDataProto;
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
