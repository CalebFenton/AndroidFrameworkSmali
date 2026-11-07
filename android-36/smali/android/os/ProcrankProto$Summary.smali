.class public final Landroid/os/ProcrankProto$Summary;
.super Ljava/lang/Object;
.source "ProcrankProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ProcrankProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Summary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ProcrankProto$Summary$Ram;,
        Landroid/os/ProcrankProto$Summary$Zram;
    }
.end annotation


# static fields
.field public static final greylist-max-o RAM:J = 0x10b00000003L

.field public static final greylist-max-o TOTAL:J = 0x10b00000001L

.field public static final greylist-max-o ZRAM:J = 0x10b00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/ProcrankProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/ProcrankProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
