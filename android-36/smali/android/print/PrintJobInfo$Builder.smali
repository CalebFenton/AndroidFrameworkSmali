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
.field private final greylist-max-o mPrototype:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor whitelist <init>(Landroid/print/PrintJobInfo;)V
    .registers 3
    .param p1, "prototype"    # Landroid/print/PrintJobInfo;

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    if-eqz p1, :cond_b

    .line 793
    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    goto :goto_10

    .line 794
    :cond_b
    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    :goto_10
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    .line 795
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/print/PrintJobInfo;
    .registers 2

    .line 880
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public whitelist putAdvancedOption(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 868
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_12

    .line 869
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmAdvancedOptions(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)V

    .line 871
    :cond_12
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 872
    return-void
.end method

.method public whitelist putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 853
    const-string/jumbo v0, "key cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_18

    .line 856
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmAdvancedOptions(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)V

    .line 858
    :cond_18
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->-$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method public whitelist setAttributes(Landroid/print/PrintAttributes;)V
    .registers 3
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    .line 812
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmAttributes(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)V

    .line 813
    return-void
.end method

.method public whitelist setCopies(I)V
    .registers 3
    .param p1, "copies"    # I

    .line 803
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmCopies(Landroid/print/PrintJobInfo;I)V

    .line 804
    return-void
.end method

.method public whitelist setPages([Landroid/print/PageRange;)V
    .registers 3
    .param p1, "pages"    # [Landroid/print/PageRange;

    .line 821
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmPageRanges(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)V

    .line 822
    return-void
.end method

.method public greylist-max-o setProgress(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 831
    const/high16 v0, 0x3f800000    # 1.0f

    const-string/jumbo v1, "progress"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 833
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmProgress(Landroid/print/PrintJobInfo;F)V

    .line 834
    return-void
.end method

.method public greylist-max-o setStatus(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 843
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->-$$Nest$fputmStatus(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)V

    .line 844
    return-void
.end method
