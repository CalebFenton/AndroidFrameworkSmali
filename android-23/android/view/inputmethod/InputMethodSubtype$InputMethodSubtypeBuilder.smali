.class public Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodSubtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSubtypeBuilder"
.end annotation


# instance fields
.field private mIsAsciiCapable:Z

.field private mIsAuxiliary:Z

.field private mOverridesImplicitlyEnabledSubtype:Z

.field private mSubtypeExtraValue:Ljava/lang/String;

.field private mSubtypeIconResId:I

.field private mSubtypeId:I

.field private mSubtypeLocale:Ljava/lang/String;

.field private mSubtypeMode:Ljava/lang/String;

.field private mSubtypeNameResId:I


# direct methods
.method static synthetic -get0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 102
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    #@6
    .line 116
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    #@8
    .line 128
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    #@a
    .line 137
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    #@c
    .line 149
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    #@e
    .line 162
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    #@10
    .line 171
    const-string/jumbo v0, ""

    #@13
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    #@15
    .line 180
    const-string/jumbo v0, ""

    #@18
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    #@1a
    .line 190
    const-string/jumbo v0, ""

    #@1d
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    #@1f
    .line 87
    return-void
.end method


# virtual methods
.method public build()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    #@0
    .prologue
    .line 196
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@6
    return-object v0
.end method

.method public setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "isAsciiCapable"    # Z

    #@0
    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    #@2
    .line 126
    return-object p0
.end method

.method public setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "isAuxiliary"    # Z

    #@0
    .prologue
    .line 99
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    #@2
    .line 100
    return-object p0
.end method

.method public setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "overridesImplicitlyEnabledSubtype"    # Z

    #@0
    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    #@2
    .line 114
    return-object p0
.end method

.method public setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeExtraValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    if-nez p1, :cond_0

    #@2
    const-string/jumbo p1, ""

    #@5
    .end local p1    # "subtypeExtraValue":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    #@7
    .line 188
    return-object p0
.end method

.method public setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeIconResId"    # I

    #@0
    .prologue
    .line 134
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    #@2
    .line 135
    return-object p0
.end method

.method public setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeId"    # I

    #@0
    .prologue
    .line 159
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    #@2
    .line 160
    return-object p0
.end method

.method public setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeLocale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    if-nez p1, :cond_0

    #@2
    const-string/jumbo p1, ""

    #@5
    .end local p1    # "subtypeLocale":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    #@7
    .line 169
    return-object p0
.end method

.method public setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeMode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    if-nez p1, :cond_0

    #@2
    const-string/jumbo p1, ""

    #@5
    .end local p1    # "subtypeMode":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    #@7
    .line 178
    return-object p0
.end method

.method public setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeNameResId"    # I

    #@0
    .prologue
    .line 146
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    #@2
    .line 147
    return-object p0
.end method
