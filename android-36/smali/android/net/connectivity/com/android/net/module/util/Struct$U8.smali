.class public Landroid/net/connectivity/com/android/net/module/util/Struct$U8;
.super Landroid/net/connectivity/com/android/net/module/util/Struct;
.source "Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "U8"
.end annotation


# instance fields
.field public final blacklist val:S
    .annotation runtime Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
        order = 0x0
        type = .enum Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->U8:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(S)V
    .registers 2
    .param p1, "val"    # S

    .line 777
    invoke-direct {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;-><init>()V

    .line 778
    iput-short p1, p0, Landroid/net/connectivity/com/android/net/module/util/Struct$U8;->val:S

    .line 779
    return-void
.end method
