.class public Landroid/test/InstrumentationUtils;
.super Ljava/lang/Object;
.source "InstrumentationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMenuIdentifier(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 5
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "identifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    const/4 v3, -0x1

    #@1
    .line 38
    .local v3, "id":I
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Ljava/lang/Integer;

    #@b
    .line 39
    .local v2, "field":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v3

    #@f
    .line 45
    .end local v2    # "field":Ljava/lang/Integer;
    :goto_0
    return v3

    #@10
    .line 42
    :catch_0
    move-exception v0

    #@11
    .line 43
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@14
    goto :goto_0

    #@15
    .line 40
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@16
    .line 41
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    #@19
    goto :goto_0
.end method
