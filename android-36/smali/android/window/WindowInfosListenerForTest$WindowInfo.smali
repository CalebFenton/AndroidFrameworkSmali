.class public Landroid/window/WindowInfosListenerForTest$WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowInfosListenerForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowInfo"
.end annotation


# instance fields
.field public final blacklist bounds:Landroid/graphics/Rect;

.field public final blacklist displayId:I

.field public final blacklist isDuplicateTouchToWallpaper:Z

.field public final blacklist isFocusable:Z

.field public final blacklist isTouchable:Z

.field public final blacklist isTrustedOverlay:Z

.field public final blacklist isVisible:Z

.field public final blacklist isWatchOutsideTouch:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist transform:Landroid/graphics/Matrix;

.field public final blacklist windowToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/graphics/Rect;ILandroid/graphics/Matrix;)V
    .registers 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "inputConfig"    # I
    .param p6, "transform"    # Landroid/graphics/Matrix;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->windowToken:Landroid/os/IBinder;

    .line 122
    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->name:Ljava/lang/String;

    .line 123
    iput p3, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->displayId:I

    .line 124
    iput-object p4, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->bounds:Landroid/graphics/Rect;

    .line 125
    and-int/lit16 v0, p5, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTrustedOverlay:Z

    .line 126
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isVisible:Z

    .line 127
    iput-object p6, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->transform:Landroid/graphics/Matrix;

    .line 128
    and-int/lit8 v0, p5, 0x8

    if-nez v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTouchable:Z

    .line 129
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isFocusable:Z

    .line 130
    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isDuplicateTouchToWallpaper:Z

    .line 132
    and-int/lit16 v0, p5, 0x200

    if-eqz v0, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    iput-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isWatchOutsideTouch:Z

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTrustedOverlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTrustedOverlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->windowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
