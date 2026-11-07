.class public Landroid/net/connectivity/com/android/net/module/util/Struct$U32;
.super Landroid/net/connectivity/com/android/net/module/util/Struct;
.source "Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "U32"
.end annotation


# instance fields
.field public final blacklist val:J
    .annotation runtime Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
        order = 0x0
        type = .enum Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->U32:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "val"    # J

    .line 797
    invoke-direct {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;-><init>()V

    .line 798
    iput-wide p1, p0, Landroid/net/connectivity/com/android/net/module/util/Struct$U32;->val:J

    .line 799
    return-void
.end method
