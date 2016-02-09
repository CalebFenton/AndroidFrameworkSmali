.class public abstract Landroid/provider/SearchIndexableData;
.super Ljava/lang/Object;
.source "SearchIndexableData.java"


# instance fields
.field public className:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public enabled:Z

.field public iconResId:I

.field public intentAction:Ljava/lang/String;

.field public intentTargetClass:Ljava/lang/String;

.field public intentTargetPackage:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public locale:Ljava/util/Locale;

.field public packageName:Ljava/lang/String;

.field public rank:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/provider/SearchIndexableData;->userId:I

    #@6
    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->locale:Ljava/util/Locale;

    #@c
    .line 127
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/provider/SearchIndexableData;->enabled:Z

    #@f
    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Landroid/provider/SearchIndexableData;-><init>()V

    #@3
    .line 137
    iput-object p1, p0, Landroid/provider/SearchIndexableData;->context:Landroid/content/Context;

    #@5
    .line 135
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SearchIndexableData[context: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 144
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->context:Landroid/content/Context;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 145
    const-string/jumbo v1, ", "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 146
    const-string/jumbo v1, "locale: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 147
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->locale:Ljava/util/Locale;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 148
    const-string/jumbo v1, ", "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 149
    const-string/jumbo v1, "enabled: "

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 150
    iget-boolean v1, p0, Landroid/provider/SearchIndexableData;->enabled:Z

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    .line 151
    const-string/jumbo v1, ", "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 152
    const-string/jumbo v1, "rank: "

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 153
    iget v1, p0, Landroid/provider/SearchIndexableData;->rank:I

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    .line 154
    const-string/jumbo v1, ", "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 155
    const-string/jumbo v1, "key: "

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 156
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 157
    const-string/jumbo v1, ", "

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 158
    const-string/jumbo v1, "userId: "

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 159
    iget v1, p0, Landroid/provider/SearchIndexableData;->userId:I

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    .line 160
    const-string/jumbo v1, ", "

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 161
    const-string/jumbo v1, "className: "

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 162
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 163
    const-string/jumbo v1, ", "

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 164
    const-string/jumbo v1, "packageName: "

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 165
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->packageName:Ljava/lang/String;

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 166
    const-string/jumbo v1, ", "

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 167
    const-string/jumbo v1, "iconResId: "

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 168
    iget v1, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    .line 169
    const-string/jumbo v1, ", "

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    .line 170
    const-string/jumbo v1, "intentAction: "

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    .line 171
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 172
    const-string/jumbo v1, ", "

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 173
    const-string/jumbo v1, "intentTargetPackage: "

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 174
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    .line 175
    const-string/jumbo v1, ", "

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    .line 176
    const-string/jumbo v1, "intentTargetClass: "

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    .line 177
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    .line 178
    const-string/jumbo v1, "]"

    #@ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v1

    #@d5
    return-object v1
.end method
