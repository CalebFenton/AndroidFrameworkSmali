.class public Landroid/text/method/DialerKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DialerKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 111
    const/16 v0, 0x16

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    #@9
    .line 31
    return-void

    #@a
    .line 111
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
        0x2bs
        0x2ds
        0x28s
        0x29s
        0x2cs
        0x2fs
        0x4es
        0x2es
        0x20s
        0x3bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/text/method/DialerKeyListener;
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 41
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    #@6
    return-object v0

    #@7
    .line 43
    :cond_0
    new-instance v0, Landroid/text/method/DialerKeyListener;

    #@9
    invoke-direct {v0}, Landroid/text/method/DialerKeyListener;-><init>()V

    #@c
    sput-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    #@e
    .line 44
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    #@10
    return-object v0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    #@0
    .prologue
    .line 36
    sget-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    #@2
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "content"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 56
    invoke-static {p2, p1}, Landroid/text/method/DialerKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    #@3
    move-result v4

    #@4
    .line 57
    .local v4, "meta":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    #@7
    move-result v5

    #@8
    .line 63
    .local v5, "number":I
    and-int/lit8 v6, v4, 0x3

    #@a
    if-nez v6, :cond_0

    #@c
    .line 64
    if-eqz v5, :cond_0

    #@e
    .line 65
    return v5

    #@f
    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    #@12
    move-result v3

    #@13
    .line 71
    .local v3, "match":I
    if-eqz v3, :cond_1

    #@15
    .line 72
    return v3

    #@16
    .line 81
    :cond_1
    if-eqz v4, :cond_3

    #@18
    .line 82
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    #@1a
    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    #@1d
    .line 83
    .local v2, "kd":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p0}, Landroid/text/method/DialerKeyListener;->getAcceptedChars()[C

    #@20
    move-result-object v0

    #@21
    .line 85
    .local v0, "accepted":[C
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_3

    #@27
    .line 86
    const/4 v1, 0x1

    #@28
    .local v1, "i":I
    :goto_0
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@2a
    array-length v6, v6

    #@2b
    if-ge v1, v6, :cond_3

    #@2d
    .line 87
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@2f
    aget-char v6, v6, v1

    #@31
    invoke-static {v0, v6}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_2

    #@37
    .line 88
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@39
    aget-char v6, v6, v1

    #@3b
    return v6

    #@3c
    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 100
    .end local v0    # "accepted":[C
    .end local v1    # "i":I
    .end local v2    # "kd":Landroid/view/KeyCharacterMap$KeyData;
    :cond_3
    return v5
.end method
