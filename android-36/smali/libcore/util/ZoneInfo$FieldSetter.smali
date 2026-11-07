.class interface abstract Llibcore/util/ZoneInfo$FieldSetter;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FieldSetter"
.end annotation


# virtual methods
.method public abstract blacklist set(Ljava/lang/reflect/Field;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
