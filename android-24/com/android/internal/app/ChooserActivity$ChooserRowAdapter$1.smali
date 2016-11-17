.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@0
    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1134
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    #@4
    .line 1135
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@6
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    #@9
    move-result v3

    #@a
    .line 1136
    .local v3, "rcount":I
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@c
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@f
    move-result-object v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 1137
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@14
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@17
    move-result-object v5

    #@18
    array-length v5, v5

    #@19
    if-eq v5, v3, :cond_5

    #@1b
    .line 1138
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@1d
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@20
    move-result-object v1

    #@21
    .line 1139
    .local v1, "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    if-eqz v1, :cond_2

    #@23
    array-length v2, v1

    #@24
    .line 1140
    .local v2, "oldRCount":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@26
    new-array v6, v3, [Lcom/android/internal/app/ChooserActivity$RowScale;

    #@28
    invoke-static {v5, v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-set0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@2b
    .line 1141
    if-eqz v1, :cond_1

    #@2d
    if-lez v3, :cond_1

    #@2f
    .line 1142
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@31
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@34
    move-result-object v5

    #@35
    .line 1143
    array-length v6, v1

    #@36
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    #@39
    move-result v6

    #@3a
    .line 1142
    invoke-static {v1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 1146
    :cond_1
    move v0, v3

    #@3e
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@40
    .line 1147
    aget-object v5, v1, v0

    #@42
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    #@45
    .line 1146
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 1139
    .end local v0    # "i":I
    .end local v2    # "oldRCount":I
    :cond_2
    const/4 v2, 0x0

    #@49
    .restart local v2    # "oldRCount":I
    goto :goto_0

    #@4a
    .line 1150
    .restart local v0    # "i":I
    :cond_3
    move v0, v2

    #@4b
    :goto_2
    if-ge v0, v3, :cond_4

    #@4d
    .line 1151
    new-instance v5, Lcom/android/internal/app/ChooserActivity$RowScale;

    #@4f
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@51
    const/4 v7, 0x0

    #@52
    const/high16 v8, 0x3f800000    # 1.0f

    #@54
    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/app/ChooserActivity$RowScale;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V

    #@57
    .line 1152
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@59
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get1(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;

    #@5c
    move-result-object v6

    #@5d
    .line 1151
    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity$RowScale;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;

    #@60
    move-result-object v4

    #@61
    .line 1153
    .local v4, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@63
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@66
    move-result-object v5

    #@67
    aput-object v4, v5, v0

    #@69
    .line 1150
    add-int/lit8 v0, v0, 0x1

    #@6b
    goto :goto_2

    #@6c
    .line 1161
    .end local v4    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_4
    move v0, v2

    #@6d
    :goto_3
    if-ge v0, v3, :cond_5

    #@6f
    .line 1162
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@71
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@74
    move-result-object v5

    #@75
    aget-object v5, v5, v0

    #@77
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->startAnimation()V

    #@7a
    .line 1161
    add-int/lit8 v0, v0, 0x1

    #@7c
    goto :goto_3

    #@7d
    .line 1166
    .end local v0    # "i":I
    .end local v1    # "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    .end local v2    # "oldRCount":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@7f
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    #@82
    .line 1133
    return-void
.end method

.method public onInvalidated()V
    .locals 4

    #@0
    .prologue
    .line 1171
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    #@3
    .line 1172
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetInvalidated()V

    #@8
    .line 1173
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@a
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1174
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@12
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    #@15
    move-result-object v2

    #@16
    const/4 v1, 0x0

    #@17
    array-length v3, v2

    #@18
    :goto_0
    if-ge v1, v3, :cond_0

    #@1a
    aget-object v0, v2, v1

    #@1c
    .line 1175
    .local v0, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    #@1f
    .line 1174
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1170
    .end local v0    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_0
    return-void
.end method
