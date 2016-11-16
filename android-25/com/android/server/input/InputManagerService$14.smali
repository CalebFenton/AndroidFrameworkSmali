.class Lcom/android/server/input/InputManagerService$14;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "val$result"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1993
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$14;->val$result:[Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    #@0
    .prologue
    .line 1998
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$14;->val$result:[Ljava/lang/String;

    #@2
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    const/4 v4, 0x0

    #@7
    aput-object v3, v2, v4

    #@9
    .line 1999
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$14;->val$result:[Ljava/lang/String;

    #@b
    new-instance v3, Ljava/io/InputStreamReader;

    #@d
    .line 2000
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@10
    move-result-object v4

    #@11
    .line 1999
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@14
    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x1

    #@19
    aput-object v3, v2, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 1996
    :goto_0
    return-void

    #@1c
    .line 2001
    :catch_0
    move-exception v1

    #@1d
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0

    #@1e
    .line 2002
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@1f
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method
