.class Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;
.super Ljava/lang/Object;
.source "ShareCompat.java"

# interfaces
.implements Landroid/support/v4/app/ShareCompat$ShareCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 99
    move v1, p2

    #@3
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_7

    #@5
    .line 100
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v0

    #@9
    .line 102
    .local v0, "c":C
    const/16 v2, 0x3c

    #@b
    if-ne v0, v2, :cond_0

    #@d
    .line 103
    const-string/jumbo v2, "&lt;"

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 99
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 104
    :cond_0
    const/16 v2, 0x3e

    #@18
    if-ne v0, v2, :cond_1

    #@1a
    .line 105
    const-string/jumbo v2, "&gt;"

    #@1d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    goto :goto_1

    #@21
    .line 106
    :cond_1
    const/16 v2, 0x26

    #@23
    if-ne v0, v2, :cond_2

    #@25
    .line 107
    const-string/jumbo v2, "&amp;"

    #@28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    goto :goto_1

    #@2c
    .line 108
    :cond_2
    const/16 v2, 0x7e

    #@2e
    if-gt v0, v2, :cond_3

    #@30
    if-ge v0, v4, :cond_4

    #@32
    .line 109
    :cond_3
    const-string/jumbo v2, "&#"

    #@35
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, ";"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 110
    :cond_4
    if-ne v0, v4, :cond_6

    #@46
    .line 111
    :goto_2
    add-int/lit8 v2, v1, 0x1

    #@48
    if-ge v2, p3, :cond_5

    #@4a
    add-int/lit8 v2, v1, 0x1

    #@4c
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@4f
    move-result v2

    #@50
    if-ne v2, v4, :cond_5

    #@52
    .line 112
    const-string/jumbo v2, "&nbsp;"

    #@55
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 113
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_2

    #@5b
    .line 116
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_1

    #@5f
    .line 118
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    goto :goto_1

    #@63
    .line 98
    .end local v0    # "c":C
    :cond_7
    return-void
.end method


# virtual methods
.method public configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "shareIntent"    # Landroid/support/v4/app/ShareCompat$IntentBuilder;

    #@0
    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@7
    .line 87
    return-void
.end method

.method public escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 93
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, p1, v2, v1}, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    #@d
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method
