.class final Lcom/android/commands/input/Input$1;
.super Ljava/util/HashMap;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/input/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 40
    const-string/jumbo v0, "keyboard"

    #@6
    const/16 v1, 0x101

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 41
    const-string/jumbo v0, "dpad"

    #@12
    const/16 v1, 0x201

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 42
    const-string/jumbo v0, "gamepad"

    #@1e
    const/16 v1, 0x401

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 43
    const-string/jumbo v0, "touchscreen"

    #@2a
    const/16 v1, 0x1002

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 44
    const-string/jumbo v0, "mouse"

    #@36
    const/16 v1, 0x2002

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 45
    const-string/jumbo v0, "stylus"

    #@42
    const/16 v1, 0x4002

    #@44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 46
    const-string/jumbo v0, "trackball"

    #@4e
    const v1, 0x10004

    #@51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 47
    const-string/jumbo v0, "touchpad"

    #@5b
    const v1, 0x100008

    #@5e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 48
    const-string/jumbo v0, "touchnavigation"

    #@68
    const/high16 v1, 0x200000

    #@6a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 49
    const-string/jumbo v0, "joystick"

    #@74
    const v1, 0x1000010

    #@77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {p0, v0, v1}, Lcom/android/commands/input/Input$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 39
    return-void
.end method
