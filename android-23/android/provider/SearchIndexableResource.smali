.class public Landroid/provider/SearchIndexableResource;
.super Landroid/provider/SearchIndexableData;
.source "SearchIndexableResource.java"


# instance fields
.field public xmlResId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0
    .param p1, "rank"    # I
    .param p2, "xmlResId"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "iconResId"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid/provider/SearchIndexableData;-><init>()V

    #@3
    .line 54
    iput p1, p0, Landroid/provider/SearchIndexableResource;->rank:I

    #@5
    .line 55
    iput p2, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    #@7
    .line 56
    iput-object p3, p0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    #@9
    .line 57
    iput p4, p0, Landroid/provider/SearchIndexableResource;->iconResId:I

    #@b
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    #@3
    .line 65
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SearchIndexableResource["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 73
    invoke-super {p0}, Landroid/provider/SearchIndexableData;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 74
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 75
    const-string/jumbo v1, "xmlResId: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 76
    iget v1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 77
    const-string/jumbo v1, "]"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1
.end method
