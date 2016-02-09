.class final Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutDescriptor"
.end annotation


# instance fields
.field public keyboardLayoutName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public receiverName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "receiverName"    # Ljava/lang/String;
    .param p2, "keyboardName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "/"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "/"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    .locals 8
    .param p0, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/16 v6, 0x2f

    #@3
    const/4 v5, 0x0

    #@4
    .line 1708
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v0

    #@8
    .line 1709
    .local v0, "pos":I
    if-ltz v0, :cond_0

    #@a
    add-int/lit8 v3, v0, 0x1

    #@c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    if-ne v3, v4, :cond_1

    #@12
    .line 1710
    :cond_0
    return-object v7

    #@13
    .line 1712
    :cond_1
    add-int/lit8 v3, v0, 0x1

    #@15
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    #@18
    move-result v1

    #@19
    .line 1713
    .local v1, "pos2":I
    add-int/lit8 v3, v0, 0x2

    #@1b
    if-lt v1, v3, :cond_2

    #@1d
    add-int/lit8 v3, v1, 0x1

    #@1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@22
    move-result v4

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 1714
    :cond_2
    return-object v7

    #@26
    .line 1717
    :cond_3
    new-instance v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    #@28
    invoke-direct {v2}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;-><init>()V

    #@2b
    .line 1718
    .local v2, "result":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    iput-object v3, v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    #@31
    .line 1719
    add-int/lit8 v3, v0, 0x1

    #@33
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    iput-object v3, v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    #@39
    .line 1720
    add-int/lit8 v3, v1, 0x1

    #@3b
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    iput-object v3, v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    #@41
    .line 1721
    return-object v2
.end method
