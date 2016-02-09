.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field opPkg:Ljava/lang/String;

.field pattern:[J

.field repeat:I

.field startTime:J

.field timeout:J

.field uid:I

.field usageHint:I


# direct methods
.method public constructor <init>(JJ[JIIILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "startTime"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 165
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    #@5
    .line 166
    iput-wide p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    #@7
    .line 167
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    #@9
    .line 168
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    #@b
    .line 169
    iput p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    #@d
    .line 170
    iput p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    #@f
    .line 171
    iput-object p9, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    #@11
    .line 164
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 177
    const-string/jumbo v1, "timeout: "

    #@8
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 178
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    #@e
    .line 176
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 179
    const-string/jumbo v1, ", startTime: "

    #@15
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 180
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    #@1b
    .line 176
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 181
    const-string/jumbo v1, ", pattern: "

    #@22
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 182
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    #@28
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 183
    const-string/jumbo v1, ", repeat: "

    #@33
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 184
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    #@39
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 185
    const-string/jumbo v1, ", usageHint: "

    #@40
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 186
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    #@46
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 187
    const-string/jumbo v1, ", uid: "

    #@4d
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 188
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    #@53
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 189
    const-string/jumbo v1, ", opPkg: "

    #@5a
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 190
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    #@60
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    return-object v0
.end method
