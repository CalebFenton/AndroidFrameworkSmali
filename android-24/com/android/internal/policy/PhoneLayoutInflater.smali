.class public Lcom/android/internal/policy/PhoneLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "PhoneLayoutInflater.java"


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 28
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 29
    const-string/jumbo v1, "android.widget."

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 30
    const-string/jumbo v1, "android.webkit."

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 31
    const-string/jumbo v1, "android.app."

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 28
    sput-object v0, Lcom/android/internal/policy/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    #@17
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    #@3
    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/policy/PhoneLayoutInflater;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/PhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    sget-object v4, Lcom/android/internal/policy/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    #@2
    const/4 v3, 0x0

    #@3
    array-length v5, v4

    #@4
    :goto_0
    if-ge v3, v5, :cond_1

    #@6
    aget-object v1, v4, v3

    #@8
    .line 58
    .local v1, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/policy/PhoneLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    .line 59
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    #@e
    .line 60
    return-object v2

    #@f
    .line 62
    .end local v2    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    #@10
    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 68
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    #@16
    move-result-object v3

    #@17
    return-object v3
.end method
