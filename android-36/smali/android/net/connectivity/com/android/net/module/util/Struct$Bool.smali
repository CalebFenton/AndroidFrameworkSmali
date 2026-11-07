.class public Landroid/net/connectivity/com/android/net/module/util/Struct$Bool;
.super Landroid/net/connectivity/com/android/net/module/util/Struct;
.source "Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bool"
.end annotation


# instance fields
.field public final blacklist val:Z
    .annotation runtime Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
        order = 0x0
        type = .enum Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->Bool:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "val"    # Z

    .line 767
    invoke-direct {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;-><init>()V

    .line 768
    iput-boolean p1, p0, Landroid/net/connectivity/com/android/net/module/util/Struct$Bool;->val:Z

    .line 769
    return-void
.end method
