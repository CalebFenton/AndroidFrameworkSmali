.class final Lcom/android/internal/app/LocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/content/Context;
    .param p2, "$anonymous1"    # I
    .param p3, "$anonymous2"    # I
    .param p5, "val$inflater"    # Landroid/view/LayoutInflater;
    .param p6, "val$layoutId"    # I
    .param p7, "val$fieldId"    # I

    #@0
    .prologue
    .line 166
    .local p4, "$anonymous3":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    iput-object p5, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    #@2
    iput p6, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    #@4
    iput p7, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    #@6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    #@9
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 171
    if-nez p2, :cond_0

    #@2
    .line 172
    iget-object v3, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    #@4
    iget v4, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    #@6
    const/4 v5, 0x0

    #@7
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 173
    .local v2, "view":Landroid/view/View;
    iget v3, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    #@d
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/widget/TextView;

    #@13
    .line 174
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@16
    .line 179
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$1;->getItem(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@1c
    .line 180
    .local v0, "item":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@23
    .line 181
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    #@2a
    .line 183
    return-object v2

    #@2b
    .line 176
    .end local v0    # "item":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    #@2c
    .line 177
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/widget/TextView;

    #@32
    .restart local v1    # "text":Landroid/widget/TextView;
    goto :goto_0
.end method
