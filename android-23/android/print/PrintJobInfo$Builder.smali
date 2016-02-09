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
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 681
    if-eqz p1, :cond_0

    #@5
    .line 682
    new-instance v0, Landroid/print/PrintJobInfo;

    #@7
    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    #@a
    .line 681
    :goto_0
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@c
    .line 680
    return-void

    #@d
    .line 683
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
    .line 745
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
    .line 733
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 734
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@a
    new-instance v1, Landroid/os/Bundle;

    #@c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@f
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-set0(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@12
    .line 736
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@14
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1b
    .line 732
    return-void
.end method

.method public putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 720
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 721
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@a
    new-instance v1, Landroid/os/Bundle;

    #@c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@f
    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-set0(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@12
    .line 723
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@14
    invoke-static {v0}, Landroid/print/PrintJobInfo;->-get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 719
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 1
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 701
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set1(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;

    #@5
    .line 700
    return-void
.end method

.method public setCopies(I)V
    .locals 1
    .param p1, "copies"    # I

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set2(Landroid/print/PrintJobInfo;I)I

    #@5
    .line 691
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 1
    .param p1, "pages"    # [Landroid/print/PageRange;

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-set3(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;

    #@5
    .line 709
    return-void
.end method
