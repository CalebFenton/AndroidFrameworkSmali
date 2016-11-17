.class public Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
.super Ljava/lang/Object;
.source "InputMethodSubtypeHandle.java"


# instance fields
.field private final mInputMethodId:Ljava/lang/String;

.field private final mSubtypeId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    #@9
    .line 32
    if-eqz p2, :cond_0

    #@b
    .line 33
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    #@11
    .line 30
    :goto_0
    return-void

    #@12
    .line 35
    :cond_0
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    #@15
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputMethodId"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    #@5
    .line 41
    iput p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    #@7
    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    if-eqz p1, :cond_1

    #@3
    instance-of v2, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 57
    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@a
    .line 58
    .local v0, "other":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 59
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    #@18
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    #@1b
    move-result v3

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 58
    :cond_0
    return v1

    #@20
    .line 55
    .end local v0    # "other":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    :cond_1
    return v1
.end method

.method public getInputMethodId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubtypeId()I
    .locals 1

    #@0
    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "InputMethodSubtypeHandle{mInputMethodId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 70
    const-string/jumbo v1, ", mSubtypeId="

    #@15
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 70
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    #@1b
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 70
    const-string/jumbo v1, "}"

    #@22
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
