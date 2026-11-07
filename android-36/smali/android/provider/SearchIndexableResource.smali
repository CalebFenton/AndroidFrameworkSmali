.class public Landroid/provider/SearchIndexableResource;
.super Landroid/provider/SearchIndexableData;
.source "SearchIndexableResource.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field public whitelist xmlResId:I


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;I)V
    .registers 5
    .param p1, "rank"    # I
    .param p2, "xmlResId"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "iconResId"    # I

    .line 54
    invoke-direct {p0}, Landroid/provider/SearchIndexableData;-><init>()V

    .line 55
    iput p1, p0, Landroid/provider/SearchIndexableResource;->rank:I

    .line 56
    iput p2, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 57
    iput-object p3, p0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 58
    iput p4, p0, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SearchIndexableResource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-super {p0}, Landroid/provider/SearchIndexableData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "xmlResId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
