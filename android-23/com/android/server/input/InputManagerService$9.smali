.class Lcom/android/server/input/InputManagerService$9;
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
    .line 1575
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "collection"    # Ljava/lang/String;
    .param p5, "keyboardLayoutResId"    # I
    .param p6, "priority"    # I

    #@0
    .prologue
    .line 1580
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Ljava/lang/String;

    #@2
    const/4 v3, 0x0

    #@3
    aput-object p2, v2, v3

    #@5
    .line 1581
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Ljava/lang/String;

    #@7
    new-instance v3, Ljava/io/InputStreamReader;

    #@9
    .line 1582
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@c
    move-result-object v4

    #@d
    .line 1581
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@10
    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    const/4 v4, 0x1

    #@15
    aput-object v3, v2, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    .line 1578
    :goto_0
    return-void

    #@18
    .line 1583
    :catch_0
    move-exception v1

    #@19
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0

    #@1a
    .line 1584
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@1b
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method
