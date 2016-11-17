.class public final Landroid/print/PrintJobInfo$Builder;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .locals 1
    .param p1, "prototype"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 780
    if-eqz p1, :cond_0

    #@5
    .line 781
    new-instance v0, Landroid/print/PrintJobInfo;

    #@7
    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    #@a
    .line 780
    :goto_0
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@c
    .line 779
    return-void

    #@d
    .line 782
    :cond_0
    new-instance v0, Landroid/print/PrintJobInfo;

    #@f
    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    #@12
    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/print/PrintJobInfo;
    .locals 1

    #@0
    .prologue
    .line 868
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    return-object v0
.end method

.method public putAdvancedOption(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 857
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@a
    new-instance v1, Landroid/os/Bundle;

    #@c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@f
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-set0(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@12
    .line 859
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@14
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    #@1b
    .line 855
    return-void
.end method

.method public putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 841
    const-string/jumbo v0, "key cannot be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 843
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@8
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 844
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@10
    new-instance v1, Landroid/os/Bundle;

    #@12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@15
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-set0(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@18
    .line 846
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@1a
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 840
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 1
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set1(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;

    #@5
    .line 799
    return-void
.end method

.method public setCopies(I)V
    .locals 1
    .param p1, "copies"    # I

    #@0
    .prologue
    .line 791
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set2(Landroid/print/PrintJobInfo;I)I

    #@5
    .line 790
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 1
    .param p1, "pages"    # [Landroid/print/PageRange;

    #@0
    .prologue
    .line 809
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set3(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;

    #@5
    .line 808
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 819
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    const-string/jumbo v2, "progress"

    #@6
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    #@9
    .line 821
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@b
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set4(Landroid/print/PrintJobInfo;F)F

    #@e
    .line 818
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set5(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    .line 830
    return-void
.end method
