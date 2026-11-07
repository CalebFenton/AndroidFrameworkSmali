.class public Landroid/window/WindowInfosListenerForTest$DisplayInfo;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowInfosListenerForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayInfo"
.end annotation


# instance fields
.field public final blacklist displayId:I

.field public final blacklist transform:Landroid/graphics/Matrix;


# direct methods
.method constructor blacklist <init>(ILandroid/graphics/Matrix;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "transform"    # Landroid/graphics/Matrix;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->displayId:I

    .line 168
    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->transform:Landroid/graphics/Matrix;

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 173
    iget v0, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->displayId:I

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->transform:Landroid/graphics/Matrix;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 173
    const-string v1, "DisplayInfo{displayId=%s, transform=%s}"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
