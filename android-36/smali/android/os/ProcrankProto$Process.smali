.class public final Landroid/os/ProcrankProto$Process;
.super Ljava/lang/Object;
.source "ProcrankProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ProcrankProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation


# static fields
.field public static final greylist-max-o CMDLINE:J = 0x1090000000aL

.field public static final greylist-max-o PID:J = 0x10500000001L

.field public static final greylist-max-o PSS:J = 0x10300000004L

.field public static final greylist-max-o PSWAP:J = 0x10300000007L

.field public static final greylist-max-o RSS:J = 0x10300000003L

.field public static final greylist-max-o SWAP:J = 0x10300000006L

.field public static final greylist-max-o USS:J = 0x10300000005L

.field public static final greylist-max-o USWAP:J = 0x10300000008L

.field public static final greylist-max-o VSS:J = 0x10300000002L

.field public static final greylist-max-o ZSWAP:J = 0x10300000009L


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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
