.class public Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
.super Landroid/net/connectivity/com/android/net/module/util/Struct;
.source "Struct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S32"
.end annotation


# instance fields
.field public final blacklist val:I
    .annotation runtime Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
        order = 0x0
        type = .enum Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->S32:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "val"    # I

    .line 787
    invoke-direct {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;-><init>()V

    .line 788
    iput p1, p0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;->val:I

    .line 789
    return-void
.end method
