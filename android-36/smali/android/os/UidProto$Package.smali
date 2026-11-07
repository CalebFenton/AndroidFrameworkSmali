.class public final Landroid/os/UidProto$Package;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Package"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UidProto$Package$Service;
    }
.end annotation


# static fields
.field public static final greylist-max-o NAME:J = 0x10900000001L

.field public static final greylist-max-o SERVICES:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/UidProto;
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
