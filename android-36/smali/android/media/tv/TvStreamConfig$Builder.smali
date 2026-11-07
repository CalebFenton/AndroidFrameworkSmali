.class public final Landroid/media/tv/TvStreamConfig$Builder;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mGeneration:Ljava/lang/Integer;

.field private greylist-max-o mMaxHeight:Ljava/lang/Integer;

.field private greylist-max-o mMaxWidth:Ljava/lang/Integer;

.field private greylist-max-o mStreamId:Ljava/lang/Integer;

.field private greylist-max-o mType:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TvStreamConfig;
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    .line 160
    new-instance v0, Landroid/media/tv/TvStreamConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/TvStreamConfig;-><init>(Landroid/media/tv/TvStreamConfig-IA;)V

    .line 161
    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmStreamId(Landroid/media/tv/TvStreamConfig;I)V

    .line 162
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmType(Landroid/media/tv/TvStreamConfig;I)V

    .line 163
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmMaxWidth(Landroid/media/tv/TvStreamConfig;I)V

    .line 164
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmMaxHeight(Landroid/media/tv/TvStreamConfig;I)V

    .line 165
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmGeneration(Landroid/media/tv/TvStreamConfig;I)V

    .line 166
    return-object v0

    .line 157
    .end local v0    # "config":Landroid/media/tv/TvStreamConfig;
    :cond_48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist generation(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "generation"    # I

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    .line 151
    return-object p0
.end method

.method public whitelist maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "maxHeight"    # I

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    .line 146
    return-object p0
.end method

.method public whitelist maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "maxWidth"    # I

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    .line 141
    return-object p0
.end method

.method public whitelist streamId(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "streamId"    # I

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    .line 131
    return-object p0
.end method

.method public whitelist type(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "type"    # I

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    .line 136
    return-object p0
.end method
