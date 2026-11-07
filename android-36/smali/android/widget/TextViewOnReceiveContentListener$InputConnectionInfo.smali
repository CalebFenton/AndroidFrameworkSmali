.class final Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextViewOnReceiveContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputConnectionInfo"
.end annotation


# instance fields
.field private final blacklist mEditorInfoContentMimeTypes:[Ljava/lang/String;

.field private final blacklist mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEditorInfoContentMimeTypes(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->mEditorInfoContentMimeTypes:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputConnection(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->mInputConnection:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/InputConnection;[Ljava/lang/String;)V
    .registers 4
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfoContentMimeTypes"    # [Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->mInputConnection:Ljava/lang/ref/WeakReference;

    .line 201
    iput-object p2, p0, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->mEditorInfoContentMimeTypes:[Ljava/lang/String;

    .line 202
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputConnection;[Ljava/lang/String;Landroid/widget/TextViewOnReceiveContentListener-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;-><init>(Landroid/view/inputmethod/InputConnection;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputConnectionInfo{mimeTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->mEditorInfoContentMimeTypes:[Ljava/lang/String;

    .line 207
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method
